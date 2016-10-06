; 7.10
(defvar note-table)
(setf note-table '((c 1)
                   (c-sharp 2)
                   (d 3)
                   (d-sharp 4)
                   (e 5)
                   (f 6)
                   (f-sharp 7)
                   (g 8)
                   (g-sharp 9)
                   (a 10)
                   (a-sharp 11)
                   (b 12)))

(defun numbers (notes)
  "Map notes to numbers"
  (mapcar #'(lambda (note) 
              (cadr (assoc note note-table)))
          notes))

(defun search-note-number-pair (number table)
  "Search for the matching pair of note and number from note table"  
  (find-if #'(lambda (entry)
               (equal number (second entry)))
           table))

(defun notes (numbers)
  "Map numbers to notes"
  (mapcar #'(lambda (number)
              (car (search-note-number-pair number note-table)))
          numbers))

(defun raise (n numbers)
  "Raise numbers by a certain interval"
  (mapcar #'(lambda (number)
              (+ n number))
          numbers))

(defun normalize (numbers)
  "Normalize the numbers so it doesn't have number above 12"
  (mapcar #'(lambda (number)
              (if (< 12 number) (- number 12) number))
          numbers))

(defun transpose (n song)
  "Transpose a song by a certaiin interval"
  (let* ((numbered (numbers song))
         (transposed (raise n numbered))
         (normalized (normalize transposed))
         (noted (notes normalized)))
    noted))

; Test Cases
; (format t "~a~%" (notes '(5 3 1 3 5 5 5)))
; (format t "~a~%" (raise 5 '(5 3 1 3 5 5 5)))
; (format t "~a~%" (normalize '(6 10 13)))
; (format t "~a" (transpose 5 '(e d c d e e e)))
; (format t "~a~%" (transpose 12 '(e d c d e e e)))
; (format t "~a~%" (transpose -1 '(e d c d e e e)))
