#lang racket

(define (hamming-distance LST1 LST2)

  ;;If list is null do nothing
  (if(null? LST1) 
     
     0 
     
      (if (= (car LST1) (car LST2));;if list 1 = list 2 then do the following
          
         (hamming-distance (cdr LST1)(cdr LST2));keep count same 
         
         (+ 1 (hamming-distance (cdr LST1)(cdr LST2))))));;add 1 to hamming distance where numbers are different 

(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))

 