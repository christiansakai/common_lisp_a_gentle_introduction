; 7.22
(defun not-none-odd (list)
  "Returns T if it is not the case that a 
  list of numbers contains no odd elements."
  (not (every #'evenp list)))

; Test Case
; (format t "~a~%" (none-odd '(1 2 3 4 5)))
; (format t "~a~%" (none-odd '(1 3 5)))
; (format t "~a~%" (none-odd '(2 4)))
