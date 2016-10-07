; 4.37
(defun nand (x y)
  (not (and x y)))

(defun logical-and (x y)
  (nand x (nand x y)))

(defun logical-or (x y)
  (nand (nand x y) (nand x y)))

; Test Case
; (format t "~a~%" (logical-and 'hello 'world))
; (format t "~a~%" (logical-and 'hello nil))
; (format t "~a~%" (logical-and nil nil))

; (format t "~a~%" (logical-or 200 'fahrenheit))
; (format t "~a~%" (logical-or nil 'fahrenheit))
; (format t "~a~%" (logical-or nil nil))
