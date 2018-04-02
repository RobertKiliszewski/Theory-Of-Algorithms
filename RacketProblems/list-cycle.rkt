;;https://stackoverflow.com/questions/13046017/rotate-a-list-to-the-left-in-scheme-racket

#lang racket

(define (lcycle x)
  (if ( null? x )'()
      (cons (cdr x)
             (cons(car x)'()))))

;;https://stackoverflow.com/questions/5006750/removing-last-element-of-a-listscheme
;;https://stackoverflow.com/questions/13175152/scheme-getting-last-element-in-list


;;Remove last object from the list
(define (remove-last-object x)
    (if (null? (cdr x))
       '()
        (cons (car x) (remove-last-object (cdr x)))))


;;read last object from the list
(define (read-last-object y)
  (cond ((null? (cdr y)) (car y))
        (else (read-last-object (cdr y)))))

;;Combine the first numbers of the list with the last number of the list at the front
(define(rcycle z)
  (cons (read-last-object z) (remove-last-object  z)))


(lcycle '(1 2 3 4 5))
(rcycle '(1 2 3 4 5))