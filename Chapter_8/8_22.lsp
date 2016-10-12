; 8.22
(defun all-equal (l)
  (cond ((<= (length l) 1) t)
        (t (and (all-equal (cdr l))) (equal (car l) (cadr l)))))

; Test Case
; (format t "~a~%" (all-equal '(i i i i)))
; (format t "~a~%" (all-equal '(i i e i)))
