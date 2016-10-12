; 8.21
(defun add-nums (n)
  (cond ((= 0 n) 0)
        (t (+ n (add-nums (- n 1))))))

; Test Case
; (format t "~a~%" (add-nums 5))
