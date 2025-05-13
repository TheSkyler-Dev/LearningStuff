;;Learning Common Lisp!
;;This is a simple program to demonstrate the use of Common Lisp.
(format t "Hello, World!~%")
;;(MyList '(1 2 3 4 5))
;;(princ (MyList))
(/ (+ -6 (sqrt (- (* 6 6) (* 4 1 8)))) (* 2 1))

;; Function with an if-statement
(defun print-sign (n)
    (format t "~A~%"
        (if (< n 0) 
            "Negative" 
            "Positive"))
)

(print-sign 512)