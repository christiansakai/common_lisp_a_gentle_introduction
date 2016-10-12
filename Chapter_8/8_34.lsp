; 8.34
(defun my-intersection (a b)
  (cond ((endp a) nil)
        ((member (car a) b) (cons (car a) (my-intersection (cdr a) b)))
        (t (my-intersection (cdr a) b))))

; Test Case
; (format t "~a~%" (my-intersection '(b) '(a b c)))
