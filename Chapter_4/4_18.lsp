; 4.18
(defun play (a b)
  (cond ((or (and (equal a 'rock) (equal b 'scissors))
             (and (equal a 'paper) (equal b 'rock))
             (and (equal a 'scissors) (equal b 'paper))) 'first-wins)
        ((or (and (equal b 'rock) (equal a 'scissors))
             (and (equal b 'paper) (equal a 'rock))
             (and (equal b 'scissors) (equal a 'paper))) 'second-wins)
        (t 'tie)))

; Test Case
; (format t "~a~%" (play 'rock 'scissors))
; (format t "~a~%" (play 'rock 'paper))
; (format t "~a~%" (play 'paper 'scissors))
; (format t "~a~%" (play 'paper 'rock))
; (format t "~a~%" (play 'rock 'rock))

