;; Variables and data types
(define name "Alice") ; String variable
(define age 25) ; Number variable

;; Lists
(define empty-list '())
(define number-list (list 1 2 3 4 5))
(define mixed-list (list "apple" 42 'banana 3.14)) ;? what is this '

;; List operations

(define first-element (car number-list)) ; Gets the first element (1)
(define rest-of-list (cdr number-list))   ; Gets the rest of the list (list 2 3 4 5)

(define fruits (list 'apple 'banana)) ;?apostrophe before apple?
(define more-fruits (list 'cherry 'date))

; Add an element to the beginning of a list
(define new-list (cons 'kiwi fruits)) ; (kiwi apple banana) ;(cons item list)

; Concatenate two lists
(define all-fruits (append fruits more-fruits)) ; (apple banana cherry date)

; Reverse a list
(define reversed-fruits (reverse all-fruits)) ; (date cherry banana apple) ;cons adds to beginning. must reverse at the end!

(define numbers (list 1 2 3 4 5))

; Map: Apply a function to each element
(define squares (map (lambda (x) (* x x)) numbers)) ; (1 4 9 16 25)

; Filter: Create a new list with elements meeting a condition
(define even-numbers (filter even? numbers)) ; (2 4)

(define fruits (list 'apple 'banana 'cherry)) ;? what is the apostrophe

; Check length
(define num-fruits (length fruits)) ; 3

; Check if emty
(define is-empty? (empty? '())) ; #t (true)

;Get 3rd element (0-indexed)
(define third (list-ref number-list 2)) 
(print third)


;; Control flow statements
(if (> age 18)
  (display "You are old enough to vote.")
  (display "You are not old enough to vote."))

(for-each ((i 0 (10)))
  (display i))

; Nested for loop
(for ([i (in-range 1 4)])
  (for ([j (in-range 1 4)])
    (display (format "~a,~a " i j)))
  (newline))

; for/and loop
(define all-positive (for/and ([x (list 1 2 3 4 5)])
                      (positive? x)))


(define (find-sign num)
  (cond
    [(> num 0) "Positive"]
    [(= num 0) "Zero"]
    [(< num 0) "Negative"]
    [else "Unknown"]))


;; Functions
(define (greet name)
  (display "Hello, " name "!"))

(greet name)

;; recursion

(define (fibonacci n)
  (cond
    [(= n 0) 0]
    [(= n 1) 1]
    [else (+ (fibonacci (- n 1)) (fibonacci (- n 2)))]))



;; Macros
;;; (define-macro defmacro-example
;;;   (x)
;;;   '(+ 1 2))

;;; (defmacro-example) ; 3

;;; ;; Modules
;;; (module m
;;;   (define (greet name)
;;;     (display "Hello, " name "!"))

;;;   (export greet))

;;; (import m)
;;; (greet name)
