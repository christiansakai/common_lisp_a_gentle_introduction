; 4.11
(defun firstzero (l)
  (cond ((= 0 (first l)) 'first)
        ((= 0 (second l)) 'second)
        ((= 0 (third l)) 'third)
        (t 'none)))

; Test Case
; (format t "~a~%" (firstzero '(3 0 4)))
