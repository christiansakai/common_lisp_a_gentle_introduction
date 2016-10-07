; 4.8
(defun emphasize3 (l)
  (cond ((equal (first l) 'good) (cons 'great (rest l)))
        ((equal (first l) 'bad) (cons 'awful (rest l)))
        (t (cons 'very l))))

; Test Case
; (format t "~a~%" (emphasize3 '(long day)))
; (format t "~a~%" (emphasize3 '(very long day)))
