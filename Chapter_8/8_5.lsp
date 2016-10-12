; 8.5
(defun add-up (l)
  (cond ((endp l) 0)
        (t (+ (car l) (add-up (cdr l))))))

; Test Case
; (format t "~a~%" (add-up '(2 3 7)))
