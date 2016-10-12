; 8.27
(defun square-list (l)
  (cond ((endp l) nil)
        (t (cons (* (car l) (car l)) (square-list (cdr l))))))

; Test Case
; (format t "~a~%" (square-list '(3 4 5 6)))
