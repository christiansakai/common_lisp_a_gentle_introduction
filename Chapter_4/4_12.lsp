; 4.12
(defun cycle (n)
  (cond ((= n 99) 1)
        (t (+ n 1))))

; Test Case
; (format t "~a~%" (cycle 1))
; (format t "~a~%" (cycle 5))
; (format t "~a~%" (cycle 99))
