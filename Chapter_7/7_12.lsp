; 7.12
(defun the-counter (sentence)
  "Count the occurences of the word \"the\" in a sentence."
  (length (remove-if-not #'(lambda (word)
                             (equal word 'the))
                         sentence)))

; Test case
; (format t "~a~%" (the-counter '(the quick brown fox jumps over the lazy dog)))
