; 2.8
(defun my-third (l)
  (first (rest (rest l))))

; Test Case
; (format t "~a~%" (my-third '(1 2 3 4 5)))
