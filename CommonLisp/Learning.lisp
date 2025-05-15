;;Learning Common Lisp!
;;This is a simple program to demonstrate the use of Common Lisp.
(format t "Hello, World!~%")
;;(MyList '(1 2 3 4 5))
;;(princ (MyList))
(/ (+ -6 (sqrt (- (* 6 6) (* 4 1 8)))) (* 2 1))

;; Function with an if-statement
(defun print-sign (n)
    (format t "~A~%"
        (cond 
            ((< n 0) "Negative")
            ((= n 0) "Zero")
            (t       "Positive")))
)

(print-sign 512)

;; Function to return the sum of all elements in a list
(defun sum-list (l)
    let ((total 0))
        (dolist (v l total)
            (setf total (+ total v))))

(sum-list '(1 2 3 4 5 6 7 8 9 10))

(defun exprl (x) (list '+ (list '* 2 x) 1))

(exprl 3)

(defun epirb (x) `(+ (* 3 ,x) 1))

(epirb 4)

defun expra (&rest xs) `(+ (* 2 ,@xs) 1)

(expra 3 4 6 5 7)