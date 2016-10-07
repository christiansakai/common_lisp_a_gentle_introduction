; 6.37
(defun rotate-left (l)
  (reverse (cons (car l) (reverse (cdr l)))))

(defun rotate-right (l)
  (cons (car (last l)) (reverse (cdr (reverse l)))))

; Test Case
; (format t "~a~%" (rotate-left '(a b c d e)))
; (format t "~a~%" (rotate-right '(a b c d e)))
