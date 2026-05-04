#lang racket

(require "../primitives.rkt"
         "../arithmetic/core.rkt"
         "../logic/core.rkt")

(provide IsZero Leq Geq Eq)

(define IsZero (rho (C-k-n 0 1) (C-k-n 2 0)))

(define Leq (compose IsZero Sub))
(define Geq (compose Leq (P-k-i 2 2) (P-k-i 2 1)))

(define Eq (compose And Leq Geq))