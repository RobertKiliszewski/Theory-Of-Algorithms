#lang racket

(define (lcycle x)
  (if ( null? x ) '()
      (cons(cdr x)
             (cons(car x)'()))))


(lcycle '(1 2 3 4 5))