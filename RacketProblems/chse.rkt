#lang racket

;https://stackoverflow.com/questions/13147582/scheme-adding-2-lists-by-index

(define (chse x y z)
  (if (null? x) ;;if null do nothing 
      '()
      (cond 
        
         ((= (car x)  1) ;; if the value of x =  1 replace it with y value 
          (cons (car y) (chse (cdr x) (cdr y) (cdr z)))) 
        
        (else (cons (car z) (chse (cdr x) (cdr y) (cdr z)))) ;;otherwise if x =/= 1 and y =/= 1 replace with z 
        )))

(chse (list 0 0 0 0 1 1 1 1)
      (list 0 0 1 1 0 0 1 1)
      (list 0 1 0 1 0 1 0 1))