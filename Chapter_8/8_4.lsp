; 8.4
(defun laugh (n)
  (cond ((= n 0) '())
        (t (cons 'ha (laugh (- n 1))))))

; Test Case
; (format t "~a~%" (laugh 3))

