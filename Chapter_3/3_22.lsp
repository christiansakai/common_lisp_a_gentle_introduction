; 3.22
(defun firstp (a l)
  (equal a (car l)))

(defun mid-add1 (l)
  (list (car l) (+ (cadr l) 1) (caddr l)))

(defun f-to-c (f)
  (/ (* 5 (- f 32)) 9))

; Test Cases
; (format t "~a~%" (firstp 'foo '(foo bar baz)))
; (format t "~a~%" (mid-add1 '(take 2 cookies)))
; (format t "~a~%" (f-to-c 32))
