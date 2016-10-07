; 6.35
(defun make-circular (l)
  (setf (cdr (last l)) l)
  l)

(defvar nerd-states)
(setf nerd-states (make-circular '(sleeping eating waiting-for-a-computer programming debugging)))

