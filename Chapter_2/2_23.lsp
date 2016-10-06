; 2.23
(defun two-deeper (a)
  (cons (cons a nil) nil))

; Test Case
; (format t "~a~%" (two-deeper 'moo))
