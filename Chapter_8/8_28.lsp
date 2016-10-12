; 8.28
(defun my-nth (n x)
  (cond ((endp x) nil)
        ((zerop n) (first x))
        (t (my-nth (- n 1) (rest x)))))

; Test Case
; (format t "~a~%" (my-nth 1 '(a b c)))
; (format t "~a~%" (my-nth 5 '(a b c)))
; (format t "~a~%" (my-nth 1000 '(a b c)))
