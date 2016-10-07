; 4.22
(defun condboilingp (temp scale)
  (cond ((and (> temp 212) (equal scale 'fahrenheit)) t)
        ((and (> temp 100) (equal scale 'celsius)) t)
        (t nil)))

(defun ifboilingp (temp scale)
  (if (and (> temp 212) (equal scale 'fahrenheit))
    t
    (if (and (> temp 100) (equal scale 'celsius))
      t)))

; Test Case
; (format t "~a~%" (condboilingp 200 'fahrenheit))
; (format t "~a~%" (condboilingp 234 'fahrenheit))
; (format t "~a~%" (condboilingp 70 'celsius))
; (format t "~a~%" (condboilingp 101 'celsius))
; (format t "~a~%" (ifboilingp 200 'fahrenheit))
; (format t "~a~%" (ifboilingp 234 'fahrenheit))
; (format t "~a~%" (ifboilingp 70 'celsius))
; (format t "~a~%" (ifboilingp 101 'celsius))
