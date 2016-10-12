; 8.24
(defun count-down (n)
  (cond ((= n 0) (cons 0 nil))
        (t (cons n (count-down (- n 1))))))

; Test Case
; (format t "~a~%" (count-down 5))
