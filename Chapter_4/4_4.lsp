; 4.4
(defun ordered (a b)
  (if (< a b)
    '(a b)
    '(b a)))

; Test Case
; (format t "~a~%" (ordered 3 4))
; (format t "~a~%" (ordered 4 3))
