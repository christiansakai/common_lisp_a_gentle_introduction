; 7.14
(defun my-setdiff (x y)
  "SET-DIFFERENCE implemented with REMOVE-IF."
  (remove-if #'(lambda (e)
                 (member e y))
             x))

(defun my-setintersection (x y)
  "SET-INTERSECTION implemented with REMOVE-IF-NOT."
  (remove-if-not #'(lambda (e)
                     (member e y))
                 x))

; (defun my-setunion (x y)
;   "SET-UNION implemented with REMOVE-IF and REMOVE-IF-NOT."
;   (remove-if #'(lambda (e)
;                  (member e y))
;              x)

(format t "~a~%" (my-setdiff '(a b c) '(b c)))
(format t "~a~%" (my-setintersection '(a b c) '(b c)))


