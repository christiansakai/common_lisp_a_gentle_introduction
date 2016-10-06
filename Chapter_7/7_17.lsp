(defun total-length (list-of-lists)
  (reduce #'(lambda (list)
              (+ (length list) 0))
          list-of-lists))

(format t "~a~%" (total-length '((1 2)
                                 (3 4 5)
                                 (6 7 8 9))))
