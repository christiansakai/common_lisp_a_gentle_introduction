; 7.29
(defvar database)
(setf database
      '((b1 shape brick)
        (b1 color green)
        (b1 size small)
        (b1 supported-by b2)
        (b1 supported-by b3)
        (b2 shapre brick)
        (b2 color red)
        (b2 size small)
        (b2 supports b1)
        (b2 left-of b3)
        (b3 shape brick)
        (b3 color red)
        (b3 size small)
        (b3 supports b1)
        (b3 right-of b2)
        (b4 shape pyramid)
        (b4 color blue)
        (b4 size large)
        (b4 supported-by b5)
        (b5 shape cube)
        (b5 color green)
        (b5 size large)
        (b5 supports b4)
        (b6 shape brick)
        (b6 color purple)
        (b6 size large)))

(defun match-element (symbol-1 symbol-2)
  "If the two symbols are equal, or if the second is a question mark, return t.
  Otherwise return nil."
  (or (equal symbol-1 symbol-2) (equal '? symbol-2)))

(defun match-triple (assertion pattern)
  "If assertion matches the pattern, return t.
  Both inputs will be three-element lists."
  (and (match-element (first assertion) (first pattern))
       (match-element (second assertion) (second pattern))
       (match-element (third assertion) (third pattern))))

(defun fetch (pattern)
  "Returns all assertions in the database that match the pattern."
  


; Test Case
(format t "~a~%" (match-element 'red 'red))
(format t "~a~%" (match-element 'red '?))
(format t "~a~%" (match-element 'red 'blue))

(format t "~a~%" (match-triple '(b2 color red) '(b2 color ?)))
(format t "~a~%" (match-triple '(b2 color red) '(b2 color green)))





