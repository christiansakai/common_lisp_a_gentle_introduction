; 6.24
(defun set-equal (x y)
  (and (subsetp x y) (subsetp y x)))

; Test Case
; (format t "~a~%" (set-equal '(a b) '(a b)))
; (format t "~a~%" (set-equal '(a b c) '(a b)))
