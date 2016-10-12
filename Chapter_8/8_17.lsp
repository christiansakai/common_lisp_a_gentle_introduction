; 8.17
(defun find-first-odd (l)
  (cond ((endp l) nil)
        ((oddp (car l)) (car l))
        (t 
  (let ((x (find-first-odd (cdr l))))
    x))))


; Test Case
; (format t "~a~%" (find-first-odd '(2 3 7)))
