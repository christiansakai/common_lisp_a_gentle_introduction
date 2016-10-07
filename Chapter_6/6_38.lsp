; 6.38
(format t "~a~%" (set-difference '(a b c) '(c b a)))
(format t "~a~%" (set-difference '(c b a) '(a b c)))

(format t "~a~%" (set-difference '(a b) '(a b c)))
(format t "~a~%" (set-difference '(a b c) '(a b)))


