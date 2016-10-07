; 6.30
(defvar books)
(setf books '((war-and-peace leo-tolstoy)
              (in-search-of-lost-time marcel-proust)
              (ulysses james-joyce)
              (don-quixote miguel-de-cervantes)))

(defun who-wrote (book)
  (second (assoc book books)))

; Test Case
; (format t "~a~%" (who-wrote 'war-and-peace))
