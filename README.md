# μ-Recursive Function Library (Racket)

A formal implementation of μ-recursive functions in Racket, including:

- Primitive recursive functions
- Boolean logic system
- μ-recursive (unbounded search) functions
- Number theory functions (division, modulo, integer square root)

---

## Structure

- primitives.rkt → Core combinators (C-k-n, P-k-i, rho, mu, compose)
- logic/ → Boolean algebra system
- arithmetic/ → Primitive recursive arithmetic
- predicates/ → Comparisons and relations
- number-theory/ → μ-recursive functions
- main.rkt → Public API entry point

---

## Theoretical Basis

This library is based on the classical model of μ-recursive functions:

- Initial functions:
  - constant functions
  - successor
  - projections

- Closure under:
  - composition
  - primitive recursion (ρ)
  - minimization (μ)

This makes the system Turing-complete.

---

## Example Usage

```racket
(require "main.rkt")

(Add 2 3)      ; => 5
(Mul 4 5)      ; => 20
(Sub 10 3)     ; => 7

(And 1 0)      ; => 0
(Or 0 1)       ; => 1
(Not 1)        ; => 0

(Div 10 3)     ; => 3
(Mod 10 3)     ; => 1
(Isqrt 16)     ; => 4
```

---

## Design Philosophy

The library is structured in layers:

1. Primitives → minimal recursive building blocks
0. Logic → Boolean algebra via functional composition
0. Arithmetic → primitive recursive arithmetic
0. Predicates → relations and comparisons
0. Number theory → μ-recursive computation (unbounded search)

Each layer depends only on the ones below it.

---

## Installation
Clone the repository:
```bash
git clone https://github.com/OscarOrtiz05/mu-recursive-library.git
```
Then import int Racket
```racket
(require "maint.rkt")
```

---

## Lisecnce
GPLv3 Lisence (See LISENCE file)