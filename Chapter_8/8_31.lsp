; 8.31
(defun compare-lengths (a b)
  (cond ((and (endp a) (endp b)) 'same-length)
        ((endp b) 'first-is-longer)
        ((endp a) 'second-is-longer)
        (t (compare-lengths (cdr a) (cdr b)))))

; Test Case
; (format t "~a~%" (compare-lengths '(a b c) '(a b c)))
; (format t "~a~%" (compare-lengths '(a b c) '(a b)))
; (format t "~a~%" (compare-lengths '(a b) '(a b c)))
