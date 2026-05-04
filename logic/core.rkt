#lang racket

(require "../primitives.rkt")

(provide If Not And Or)

;; If-Then-Else function
(define If (rho (P-k-i 2 2) (P-k-i 4 3)))

;; Negation
(define Not (compose If (P-k-i 1 1) (C-k-n 1 0) (C-k-n 1 1)))

;; Conjunction
(define And (compose If (P-k-i 2 1) (P-k-i 2 2) (C-k-n 2 0)))

;; Disjunction
(define Or (compose If (P-k-i 2 1) (C-k-n 2 1) (P-k-i 2 2)))