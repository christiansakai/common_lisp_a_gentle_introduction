; 6.21
(defun my-subsetp (x y)
  (endp (set-difference x y)))

; Test Case
; (format t "~a~%" (my-subsetp '(a b) '(a b c d)))
