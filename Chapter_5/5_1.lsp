; 5.1
(defun poor-style (p)
  (let ((p (+ p 5)))
    (list 'result 'is p)))

; Test Case
; (format t "~a~%" (poor-style 2))
