#lang racket

(define (sod2 x y z)
  (if (null? x) ;;if null do nothing 
      '()
      
      (cond 
         ((= 0 (modulo (+(car x) (car y) (car z)) 2 )) ;;if odd 
          (cons 0(sod2 (cdr x) (cdr y) (cdr z)))) ;;add 0 to the list
        
        (else (cons 1 (sod2(cdr x) (cdr y) (cdr z)))) ;;if even add 1
        )))

(sod2 (list 0 0 0 0 1 1 1 1)
      (list 0 0 1 1 0 0 1 1)
      (list 0 1 0 1 0 1 0 1))