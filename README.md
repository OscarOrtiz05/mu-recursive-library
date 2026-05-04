# μ-Recursive Function Library (Racket)

A formal implementation of μ-recursive functions in Racket, including:

- Primitive recursive functions
- Boolean logic system
- μ-recursive (unbounded search) functions
- Number theory functions (division, modulo, integer square root)

## Structure

- primitives.rkt → core building blocks
- logic/ → boolean algebra
- arithmetic/ → primitive recursive arithmetic
- predicates/ → comparisons and relations
- number-theory/ → μ-recursive functions

## Example

```racket
(require "main.rkt")

(Add 2 3)
(Mul 4 5)
(And 1 0)
(Div 10 3)