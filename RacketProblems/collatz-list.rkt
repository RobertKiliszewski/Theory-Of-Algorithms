;;https://stackoverflow.com/questions/46648004/dr-racket-saving-intermidiate-results-collatz-conjecture

#lang racket

(define (collatz-conjecture n)
  (cond
    ((= n 1) '(1))
    ((even? n)
     (cons n (collatz-conjecture (/ n 2))))
    (else
     (cons n (collatz-conjecture (+ (* 3 n) 1))))))

(collatz-conjecture 5)
(collatz-conjecture 9)
(collatz-conjecture 2)
