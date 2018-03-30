;;https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion

#lang racket

(define (prime? p)
  (define (non-divisible-by n d)
    (cond
     ((= d 1) #t)
     (else (if(= (remainder n d) 0)
          #f
          (non-divisible-by n (- d 1))))))
  (if (= p 1)
      #t
      (non-divisible-by p (- p 1))))

(prime? 6)