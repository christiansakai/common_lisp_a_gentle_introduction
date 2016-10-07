; 4.9
(defun make-odd (x)
  (cond ((not (oddp x)) (+ x 1))
        (t x)))

; Test Case
; (format t "~a~%" (make-odd 2))
; (format t "~a~%" (make-odd 3))
