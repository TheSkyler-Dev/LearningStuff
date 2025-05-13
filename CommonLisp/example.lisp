(defun ask-name ()
    (format t "Name: ")
    (finish-output)
    (read-line))

(defun ask-and-return ()
    (let ((name (ask-name)))
        (setf name (concatenate 'string "Hi " name "!"))
        (format t "~A~%" name)
        name))

(princ (ask-and-return))

(defun ask-age ()
    (format t "What is your age? ")
    (finish-output)
    (read-line))

(defun return-age ()
    (let ((age (ask-age)))
        (format t "~A~%" age)
        age))

(princ (return-age))