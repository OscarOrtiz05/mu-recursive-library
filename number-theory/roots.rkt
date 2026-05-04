#lang racket

(require "../primitives.rkt"
         "../arithmetic/core.rkt"
         "../logic/core.rkt"
         "../predicates/extended.rkt")

(provide Isqrt)

(define Isqrt (mu
                (compose Not
                         (compose Gt
                                  (compose Mul
                                           (compose S (P-k-i 2 1))
                                           (compose S (P-k-i 2 1)))
                                  (P-k-i 2 2)))))