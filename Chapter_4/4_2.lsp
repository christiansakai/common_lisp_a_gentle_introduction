; 4.2
(defun further (n)
  (if (> n 0)
    (+ n 1)
    (- n 1)))

; Test Case
; (format t "~a~%" (further -1))
; (format t "~a~%" (further 1))
