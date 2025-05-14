(defun ask-name ()
    (format t "Name: ")
    (finish-output)
    (read-line))

(defun ask-and-return ()
    (let ((name (ask-name)))
        (setf name (concatenate 'string "Hi " name "!"))
        (format t "~A~%" name)
        name))

(ask-and-return)

(defun ask-age ()
    (format t "What is your age? ")
    (finish-output)
    (read-line))

(defun return-age ()
    (let ((age (ask-age)))
        (format t "~A~%" age)
        age))

(return-age)

(defun read-number ()
    (format t "Enter a number: ")
    (finish-output)
    (parse-integer (read-line)))

(defun read-and-sum (n)
    (let ((sum 0))
        (dotimes (i n sum)
            (setf sum (+ sum (read-number))))))

(princ (read-and-sum 5))