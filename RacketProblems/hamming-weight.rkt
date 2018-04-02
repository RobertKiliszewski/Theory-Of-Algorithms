#lang racket

;;https://stackoverflow.com/questions/32854125/racket-how-to-count-the-number-of-elements-in-a-list

(define (hamming-weight binarylst)
  
  ;;if null do nothing 
  (if(null? binarylst)
     
     0
     
     ;;if not null do the following
     (if(=(car binarylst) 0 )
        
        ;;check if number is not 0
        (hamming-weight (cdr binarylst))
        
        ;;if its not 0 then add the 1's together 
        (+ 1 (hamming-weight(cdr binarylst))))))

(hamming-weight '(1 0 1 0 1 1 1 0))
  

