# by

型理論においては，命題 `P` は型で，証明 `h : P` はその項です．証明を構成するとは項 `h` を構成するということです．`by` は，証明の構成をタクティクで行いたいときに使います．

```lean
{{#include ../Examples/Mathlib/By.lean:first}}
```

## by?

これは Mathlib4 に依存したタクティクですが，`by?` を使えばタクティクモードで構成した証明を直接構成した証明に変換してくれます．

```lean
{{#include ../Examples/Mathlib/By.lean:question}}
```