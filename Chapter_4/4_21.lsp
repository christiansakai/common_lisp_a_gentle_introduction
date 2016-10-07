; 4.21
(defun gtest (x y)
  (or (> x y)
      (zerop x)
      (zerop y)))

(defun ifgtest (x y)
  (if (> x y)
    t
    (if (zerop x)
      t
      (if (zerop y)
        t))))

(defun condgtest (x y)
  (cond ((> x y) t)
        ((zerop x) t)
        ((zerop y) t)
        (t nil)))

; Test Case
; (format t "~a~%" (gtest 2 1))
; (format t "~a~%" (gtest 0 1))
; (format t "~a~%" (gtest 2 0))
; (format t "~a~%" (gtest 1 2))

; (format t "~a~%" (ifgtest 2 1))
; (format t "~a~%" (ifgtest 0 1))
; (format t "~a~%" (ifgtest 2 0))
; (format t "~a~%" (ifgtest 1 2))

; (format t "~a~%" (condgtest 2 1))
; (format t "~a~%" (condgtest 0 1))
; (format t "~a~%" (condgtest 2 0))
; (format t "~a~%" (condgtest 1 2))
