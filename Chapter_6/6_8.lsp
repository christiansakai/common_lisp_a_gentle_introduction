; 6.8
(defun my-butlast (l)
  (reverse (cdr (reverse l))))

; Test Case
; (format t "~a~%" (my-butlast '(roses are red)))
; (format t "~a~%" (my-butlast '(g a g a)))
