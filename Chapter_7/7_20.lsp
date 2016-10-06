; 7.19
(defun none-odd (list)
  "Returns T if every element of a list of numbers is not odd."
  (every #'evenp list))

; Test Case
; (format t "~a~%" (none-odd '(1 2 3 4 5)))
; (format t "~a~%" (none-odd '(1 3 5)))
; (format t "~a~%" (none-odd '(2 4)))
