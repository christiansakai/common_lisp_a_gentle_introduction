; 4.1
(defun make-even (n)
  (if (oddp n)
    (+ 1 n)
    n))

; Test Case
; (format t "~a~%" (make-even 1))
; (format t "~a~%" (make-even 2))
