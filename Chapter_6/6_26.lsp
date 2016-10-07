; 6.26
(defun right-side (features)
  (cdr (member '-vs- features)))

(defun left-side (features)
  (cdr (member '-vs- (reverse features))))

(defun count-common (features)
  (length (intersection (right-side features) (left-side features))))

(defun compare (features)
  (list (count-common features) 'common 'features))

; Test Case
; (format t "~a~%" (right-side '(large red shiny cube -vs- small shiny red four-sided pyramid)))
; (format t "~a~%" (left-side '(large red shiny cube -vs- small shiny red four-sided pyramid)))
; (format t "~a~%" (count-common '(large red shiny cube -vs- small shiny red four-sided pyramid)))
; (format t "~a~%" (compare '(large red shiny cube -vs- small shiny red four-sided pyramid)))
; (format t "~a~%" (compare '(small red metal cube -vs- red plastic small cube)))
