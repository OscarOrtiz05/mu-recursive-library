#lang racket

(require "../primitives.rkt"
         "../logic/core.rkt"
         "../predicates/core.rkt")

(provide Lt Gt IsPositive Min Max)

;; Strictly greater than and less than
(define Lt (compose Not Geq))
(define Gt (compose Not Leq))

;; Is positive
(define IsPositive (compose Not IsZero))

;; Min/Max
(define Min (compose If Leq (P-k-i 2 1) (P-k-i 2 2)))
(define Max (compose If Geq (P-k-i 2 1) (P-k-i 2 2)))