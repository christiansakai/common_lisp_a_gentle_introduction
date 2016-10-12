; 8.33
(defun my-remove (item l)
  (cond ((endp l) nil)
        ((equal item (car l)) (my-remove item (cdr l)))
        (t (cons (car l) (my-remove item (cdr l))))))

; Test Case
; (format t "~a~%" (my-remove 'b '(a b c)))
; (format t "~a~%" (my-remove 'c '(a b c)))
