; 4.20
(defun ifcompare (x y)
  (if (equal x y)
    'numbers-are-the-same
    (if (< x y)
      'first-is-smaller
      (if (> x y)
        'first-is-bigger))))

(defun andorcompare (x y)
  (or (and (equal x y) 'numbers-are-the-same)
      (and (< x y) 'first-is-smaller)
      (and (> x y) 'first-is-bigger)))

; Test Case
; (format t "~a~%" (ifcompare 2 2))
; (format t "~a~%" (ifcompare 1 2))
; (format t "~a~%" (ifcompare 3 2))

; (format t "~a~%" (andorcompare 2 2))
; (format t "~a~%" (andorcompare 1 2))
; (format t "~a~%" (andorcompare 3 2))
