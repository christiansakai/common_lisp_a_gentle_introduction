; 4.16
(defun squareordivide (n)
  (cond ((and (oddp n) (> n 0)) (* n n))
        ((and (oddp n) (< n 0)) (* 2 n))
        (t (/ n 2))))

; Test Case
; (format t "~a~%" (squareordivide 3))
; (format t "~a~%" (squareordivide -3))
; (format t "~a~%" (squareordivide 2))

