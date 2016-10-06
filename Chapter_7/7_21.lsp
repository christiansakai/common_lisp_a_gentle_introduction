; 7.21
(defun not-all-odd (list)
  "Returns T if not every element of a list of numbers is odd."
  (not (every #'oddp list)))

; Test Case
; (format t "~a~%" (not-all-odd '(1 2 3 4 5)))
; (format t "~a~%" (not-all-odd '(1 3 5)))
