#lang racket

;https://stackoverflow.com/questions/13147582/scheme-adding-2-lists-by-index

(define (maj x y z)
  (if (null? x) ;;if null do nothing 
      '()
      (cond ;;These conditions check if x = y or x = z or z = y etc...
        
         ((= (car x) (car y)) ;;x = y
          (cons (car x) (maj (cdr x) (cdr y) (cdr z)))) ;;add x to the new list 
         
        ((= (car x) (car z));;x = z
         (cons (car x) (maj (cdr x) (cdr y) (cdr z)))) ;; or add y to the new list 
        
        (else (cons (car y) (maj (cdr x) (cdr y) (cdr z)))) 
        )))

(maj (list 0 0 0 0 1 1 1 1)
     (list 0 0 1 1 0 0 1 1)
     (list 0 1 0 1 0 1 0 1))