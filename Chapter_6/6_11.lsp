; 6.11
(defun make-palindrome (l)
  (append l (reverse l)))

; Test Case
; (format t "~a~%" (make-palindrome '(you and me)))
