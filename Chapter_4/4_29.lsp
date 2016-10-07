; 4.29
(defun if-logical-and (a b)
  (if a
    (if b
      t)))

(defun cond-logical-and (a b)
  (cond ((and a b) t)
        (t nil)))

; Test Case
 ; (format t "~a~%" (if-logical-and 'hello 'world))
 ; (format t "~a~%" (if-logical-and 'hello nil))
 ; (format t "~a~%" (cond-logical-and 'hello 'world))
 ; (format t "~a~%" (cond-logical-and 'hello nil))
