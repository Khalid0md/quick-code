#lang racket
;fileIO and functional
(define (ispalindrome string)
    (define len (- (string-length string) 1))
    (define (check n)
        (cond
            [(= (+ len 1) 0) true]
            [(and (>= n (floor (/ len 2))) (odd? len)) true]
            [(and (>= n (floor (/ len 2))) (char=? (string-ref string n) (string-ref string (- (+ len 1) n)))) true]
            [(not (char=? (string-ref string n)  (string-ref string (- len n)))) false]
            [check (+ n 1)]
        )
    )
    (print (check 0))
)

;(ispalindrome "")
;(ispalindrome "racar")
;(ispalindrome "raccar")
;(ispalindrome "racnar")

(define numbers (list 1 2 3 4 5))
(print (list-ref numbers 2))

(for ([i (in-range 0 4)])
  (print i)
  )

(print (for/and ([x (list 1 -2 3 4 5)])
                      (positive? x)))
