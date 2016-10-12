; 8.2
(defun anyoddp (l)
  (cond ((endp l) nil)
        ((equal (anyoddp (cdr l)) t) t)
        (t (oddp (car l)))))

; Test Case
; (format t "~a~%" (anyoddp '(1 2 3 4)))
; (format t "~a~%" (anyoddp '(2 4 3 4)))
; (format t "~a~%" (anyoddp '(2 4 6 8)))
