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
    (let ((total 0))
        (dolist (v l total)
            (setf total (+ total v)))))

(princ (sum-list '(1 2 3 4 5 6 7 8 9 10)))
(terpri)

(defun exprl (x) (list '+ (list '* 2 x) 1))

(princ (exprl 3))
(terpri)

(defun epirb (x) `(+ (* 3 ,x) 1))

(princ (epirb 4))
(terpri)

(defun expra (&rest xs) `(+ (* 2 ,@xs) 1))

(princ (expra 3 4 6 5 7))
(terpri)

(defun plusf (a b) `(+ ,a ,b))
(princ (plusf 4 8))
(terpri)

(defmacro plusm (c d) `(+ ,c ,d))
(princ (plusm 4 8))
(terpri)

(if t (progn (princ "Hello ") (princ "World")))
(terpri)

(when t (princ "Hello ") (princ "World")) ;;better option
(terpri)

(defmacro if-let (binding true-expr false-expr)
  `(let (,binding)
    (if ,(first binding) ,true-expr ,false-expr)))

(macroexpand-1 '(if-let (x 42) 'true 'false))

;;(defmacro if-swapped (con false-expr true-expr)
;;  `(if ,(con) ,false-expr ,true-expr))

;;(macroexpand-1 '(if-swapped (14) 'false 'true))