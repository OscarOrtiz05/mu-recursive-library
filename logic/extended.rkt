#lang racket

(require "../primitives.rkt"
         "core.rkt")

(provide Nand Nor Xor Xnor Imply Nimply ImpliedBy NotImpliedBy)

(define Nand (compose Not And))
(define Nor (compose Not Or))

(define Xor
  (compose And
           (compose Or (P-k-i 2 1) (P-k-i 2 2))
           (compose Not (compose And (P-k-i 2 1) (P-k-i 2 2)))))
(define Xnor (compose Not Xor))

(define Imply (compose Or (compose Not (P-k-i 2 1)) (P-k-i 2 2)))
(define Nimply (compose Not Imply))

(define ImpliedBy (compose Or (compose Not (P-k-i 2 2)) (P-k-i 2 1)))
(define NotImpliedBy (compose Not ImpliedBy))