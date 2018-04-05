#lang racket

;;https://stackoverflow.com/questions/22560573/how-to-do-square-in-racket

(define (square x)
  (* x x))




(define (lstq l m)
 
  (if (or(null? l)(null? m)) ;;if null do nothing 
    
     0

     ;;This means take the i^th element of m from the i^th element of l and square the result for all i.
     ;;Then add all of those to get d.
     
     (+ (square(- (car l) (car m))) (lstq (cdr l) (cdr m)))))

;;test Square
(square 2)

(lstq ' (4.5 5.1 6.2 7.8) ' (1.1 -0.1 6.1 3.8))