; 7.19
(defun all-odd (list)
  "Returns T if every element of the list of numbers is odd."
  (every #'oddp list))

; Test Case
; (format t "~a~%" (all-odd '(1 2 3 4 5)))
; (format t "~a~%" (all-odd '(1 3 5)))
