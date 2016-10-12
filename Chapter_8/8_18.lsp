; 8.18
(defun last-element (l)
  (cond ((atom (cdr l)) (car l))
        (t (last-element (cdr l)))))

; Test Case
; (format t "~a~%" (last-element '(2 3 7)))
