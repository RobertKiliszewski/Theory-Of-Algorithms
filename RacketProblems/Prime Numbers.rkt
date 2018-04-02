;;https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion

#lang racket

;;Define prime function
(define (prime-number p)
  (define (non-divisible-by n d)
    (cond
      ;;if d + 1 = true
     ((= d 1) #t)
     ;;if remainder is 0 
     (else (if(= (modulo n d) 0)
          #f
          (non-divisible-by n (- d 1))))))
  (if (= p 1)
      #t
      (non-divisible-by p (- p 1))))

(prime-number 1)