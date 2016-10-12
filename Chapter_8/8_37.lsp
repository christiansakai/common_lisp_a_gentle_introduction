; 8.37
(defun count-odd-conditional-augmentation (l)
  (cond ((endp l) 0)
        ((oddp (car l)) (+ 1 (count-odd-conditional-augmentation (cdr l))))
        (t (count-odd-conditional-augmentation (cdr l)))))

(defun count-odd-original-augmentation (l)
  (cond ((endp l) 0)
        ((oddp (car l)) (+ 1 (count-odd-original-augmentation (cdr l))))
        (t (+ 0 (count-odd-original-augmentation (cdr l))))))

; Test Case
; (format t "~a~%" (count-odd-conditional-augmentation '(1 2 3 4 5 6)))
; (format t "~a~%" (count-odd-original-augmentation '(1 2 3 4 5 6)))
