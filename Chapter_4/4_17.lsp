; 4.17
(defun genderp (a b)
  (cond ((and (or (equal a 'boy) (equal a 'girl)) (equal b 'child)) t)
        ((and (or (equal a 'man) (equal a 'woman)) (equal b 'adult)) t)
        (t nil)))

; Test Case
; (format t "~a~%" (genderp 'boy 'child))
; (format t "~a~%" (genderp 'woman 'adult))
; (format t "~a~%" (genderp 'boy 'man))
