; 8.6
(defun alloddp (l)
  (cond ((endp l) t)
        (t (and (alloddp (cdr l)) (oddp (car l))))))

; Test Case
; (format t "~a~%" (alloddp '(3 3 7)))
