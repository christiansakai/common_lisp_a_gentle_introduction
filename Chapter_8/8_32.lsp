; 8.32
(defun sum-numeric-elements (l)
  (cond ((endp l) 0)
        ((numberp (car l)) (+ (car l) (sum-numeric-elements (cdr l))))
        (t (sum-numeric-elements (cdr l)))))

; Test Case
; (format t "~a~%" (sum-numeric-elements '(3 bears 3 bowls and 1 girl)))
