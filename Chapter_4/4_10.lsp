; 4.10
(defun constrain (x min max)
  (cond ((< x min) min)
        ((> x max) max)
        (t x)))

(defun ifconstrain (x min max)
  (if (< x min)
    min
    (if (> x max)
      max
      x)))


; Test Case
; (format t "~a~%" (constrain 3 -50 50))
; (format t "~a~%" (constrain 92 -50 50))
; (format t "~a~%" (ifconstrain 3 -50 50))
; (format t "~a~%" (ifconstrain 92 -50 50))
