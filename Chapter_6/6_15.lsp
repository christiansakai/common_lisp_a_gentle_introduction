; 6.15
(defun contains-article-p (l)
  (not (endp (intersection '(the a an) l))))

(defun member-or-contains-article-p (l)
  (not (endp (or (member 'the l)
                 (member 'a l)
                 (member 'an l)))))

(defun member-and-contains-article-p (l)
  (not (and (not (member 'the l))
            (not (member 'a l))
            (not (member 'an l)))))

; Test Case
; (format t "~a~%" (contains-article-p '(here is the man)))
; (format t "~a~%" (contains-article-p '(here is man)))

; (format t "~a~%" (member-or-contains-article-p '(here is the man)))
; (format t "~a~%" (member-or-contains-article-p '(here is man)))

; (format t "~a~%" (member-and-contains-article-p '(here is the man)))
; (format t "~a~%" (member-and-contains-article-p '(here is man)))
