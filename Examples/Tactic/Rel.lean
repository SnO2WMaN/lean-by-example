/- # rel

`rel` は，一般化された合同性を用いてゴールを分解し，命題を代入することで示すタクティクです．ゴールが関係(relation)について述べているときに使用できます．

典型的には不等式を代入して適用し，不等式を示します． -/
import Mathlib.Tactic.GCongr -- `rel` を使用するのに必要

variable (a b c d: Nat)

example (h1 : a ≤ b) (h2 : c ≤ d) : a + c ≤ b + d := by
  rel [h1, h2]

/-! 下記で示すように，ゴールが関係式でないときにはエラーになります．-/

/-- error: rel failed, goal not a relation -/
#guard_msgs in
example (x : Nat) : Nat := by rel [x]

/-! ## gcongr
なお，基本的に `rel` よりも `gcongr` の方が強いタクティクです. `gcongr` は `rel` とは異なり，ローカルコンテキストから必要な命題を自動的に読み込むことができます．
-/

example (h1 : a ≤ b) (h2 : c ≤ d) : a + c ≤ b + d := by
  -- `gcongr` でも示すことができる
  gcongr
