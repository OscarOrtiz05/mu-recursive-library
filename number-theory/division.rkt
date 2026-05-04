#lang racket

(require "../primitives.rkt"
         "../arithmetic/core.rkt"
         "../logic/core.rkt"
         "../predicates/extended.rkt")

(provide Div Mod)

(define Div (mu
              (compose Not
                       (compose Gt
                                (compose Mul
                                         (compose S (P-k-i 3 1))
                                         (P-k-i 3 3))
                                (P-k-i 3 2)))))

(define Mod (compose Sub
                     (P-k-i 2 1)
                     (compose Mul
                              (compose Div
                                       (P-k-i 2 1)
                                       (P-k-i 2 2))
                              (P-k-i 2 2))))