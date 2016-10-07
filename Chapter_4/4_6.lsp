; 4.6
(defun my-abs (n)
  (cond ((< n 0) (- n n n))
        (t n)))

; Test Case
; (format t "~a~%" (my-abs -4))
; (format t "~a~%" (my-abs 4))
