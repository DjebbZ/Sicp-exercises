#lang planet neil/sicp

(define (sum-sqr a b c)
    (define (sum-sqr-intern a b) (+ (* a a) (* b b)))
    (cond ((and (<= a b) (<= a c)) (sum-sqr-intern b c))
          ((and (<= b c) (<= b a)) (sum-sqr-intern a c))
          (else (sum-sqr-intern a b))))