(defun read-number ()
    (format t "Enter a number: ")
    (finish-output)
    (parse-integer (read-line)))

(defun read-and-sum (n)
    (let ((sum 0))
        (do ((i (read-number) (read-number))) ((= i 0) sum)
            (setf sum (+ sum (read-number))))))

(princ (read-and-sum 5))