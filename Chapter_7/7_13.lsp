; 7.13
(defun get-list-length-two (lists)
  "Get from a list of lists, list with length exactly 2."
  (remove-if-not #'(lambda (list)
                     (= (length list) 2))
                 lists))

; Test Case
; (format t "~a~%" (get-list-length-two '((a)
;                                       (a b)
;                                       (a b c)
;                                       (a b c d))))
