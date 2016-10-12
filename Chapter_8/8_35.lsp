; 8.35
(defun my-set-difference (a b)
  (cond ((endp a) nil)
        (t 
  (let ((x (my-set-difference (cdr a) b)))
    (cond ((member (car a) b) (cons (car a) x))
          (t x))))))

; Test Case
(format t "~a~%" (my-set-difference '(a b c) '(c)))
; (format t "~a~%" (my-set-difference '(b) '(a b c)))
; (format t "~a~%" (my-set-difference '(b) '(a b c)))
