#lang racket

(require "../primitives.rkt"
         "../logic/core.rkt"
         "../predicates/core.rkt")

(provide Lt Gt IsPositive)

;; Strictly greater than and less than
(define Lt (compose Not Geq))
(define Gt (compose Not Leq))

;; Is positive
(define IsPositive (compose Not IsZero))