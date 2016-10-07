; 6.7
(defun next-to-last (l)
  (second (reverse l)))

(defun nth-next-to-last (l)
  (nth (- (length l) 2) l))

; Test Case
; (format t "~a~%" (next-to-last '(a b c)))
; (format t "~a~%" (nth-next-to-last '(a b c d)))
