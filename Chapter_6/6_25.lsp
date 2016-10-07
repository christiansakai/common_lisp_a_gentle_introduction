; 6.25
(defun proper-subsetp (x y)
  (and (subsetp x y)
       (not (and (subsetp x y) (subsetp y x)))))

; Test Case
; (format t "~a~%" (proper-subsetp '(a b) '(a b c)))
; (format t "~a~%" (proper-subsetp '(a b c) '(a b c)))
