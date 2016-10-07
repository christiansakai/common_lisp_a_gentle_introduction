; 4.13
(defun howcompute (a b c)
  (cond ((= (+ a b) c) 'sum)
        ((= (* a b) c) 'product)
        ((= (- a b) c) 'subtract)
        ((= (/ a b) c) 'divide)
        (t '(beats me))))

; Test Case
; (format t "~a~%" (howcompute 3 4 7))

