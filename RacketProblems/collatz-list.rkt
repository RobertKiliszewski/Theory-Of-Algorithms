;;https://stackoverflow.com/questions/46648004/dr-racket-saving-intermidiate-results-collatz-conjecture

#lang racket

(define (collatz-conjecture n)
  (cond
    ((= n 1) '(1))
    ;;if even divide by 2 
    ((even? n)
     (cons n (collatz-conjecture (/ n 2))))
    ;;if odd multiply by 3 and add 1
    (else
     (cons n (collatz-conjecture (+ (* 3 n) 1))))))

(collatz-conjecture 5)
(collatz-conjecture 9)
(collatz-conjecture 2)
