; 3.7
(defun miles-per-galon (initial-odometer-reading final-odometer-reading gallons-consumed)
  (/ (- final-odometer-reading initial-odometer-reading) gallons-consumed))

; Test Cases
; (format t "~a~%" (miles-per-galon 0 10 2))
