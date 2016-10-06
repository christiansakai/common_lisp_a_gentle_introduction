; 7.11
(defun between-1-to-5 (numbers)
  "Pick out numbers in a list that are greater than one and less than five."
  (remove-if-not #'(lambda (number)
                     (and (> number 1)
                          (< number 5)))
                 numbers))

; Test Case
; (format t "~a~%" (between-1-to-5 '(0 1 2 3 4 5)))
