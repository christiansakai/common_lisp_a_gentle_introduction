; 3.11
(defun longer-than (a b)
  (> (length a) (length b)))

; Test Cases
(format t "~a~%" (longer-than '(a b) '(a)))
