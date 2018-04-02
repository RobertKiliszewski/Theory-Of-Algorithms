#lang racket

;;https://stackoverflow.com/questions/41512010/sum-items-in-list-racket
;;https://stackoverflow.com/questions/27995368/scheme-split-list-into-list-of-two-sublists-of-even-and-odd-positions

;;Sum all of the numbers in the list
(define (sum_list x)
  (if (null? x)
      0
      (+ (car x)(sum_list (cdr x)))))

;;Check for sublists that are = 0
(define (sublsum-is-zero y)
  (if (null? y) '()
	(if (and(=(sum_list (car y)) 0)
                (not (null? (car y))))
	  (cons (car y)(sublsum-is-zero(cdr y)))
      (sublsum-is-zero (cdr y)))))

;;combine such numbers that the sum of these numbers will be 0 when added together 
(define (sublsum z)
  (if (null? z)
      '()
      (sublsum-is-zero (combinations z))))


(sublsum (list 1 2 3 4 -5))
(sublsum (list 1 2 3 4 5))