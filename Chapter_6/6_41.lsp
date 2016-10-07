; 6.41
(defvar map)
(setf map '((living-room
              (north front-stairs)
              (south dining-room)
              (east kitchen))
            (upstairs-bedroom 
              (west library)
              (south front-stairs))
            (dining-room
              (north living-room)
              (east pantry)
              (west downstairs-bedroom))
            (kitchen
              (west living-room)
              (south pantry))
            (pantry
              (north kitchen)
              (west dining-room))
            (downstairs-bedroom 
              (north back-stairs)
              (east downstairs-bedroom))
            (back-stairs
              (north library)
              (south downstairs-bedroom))
            (front-stairs
              (north upstairs-bedroom)
              (south living-room))
            (library 
              (east upstairs-bedroom)
              (south back-stairs))))

(defun choices (room)
  (cdr (assoc room map)))

(defun look (direction room)
  (second (assoc direction (choices room))))

(defvar loc)
(setf loc 'pantry)

(defun set-robbie-location (place)
  "Moves Robbie to PLACE by setting
  the variable LOC."
  (setf loc place))

(defun how-many-choices ()
  (length (choices loc)))

(defun upstairsp (location)
  (or (equal location 'bedroom)
      (equal location 'library)))

(defun onstairsp (location)
  (or (equal location 'front-stairs)
      (equal location 'back-stairs)))

(defun where ()
  (cond ((upstairsp loc) (list 'robbie 'is 'upstairs 'in 'the loc))
        ((equal 'front-stairs loc) (list 'robbie 'is 'on 'the 'front-stairs))
        (t (list 'robbie 'is 'downstairs 'in 'the loc))))

(defun move (direction)
  (let ((new-location (look direction loc)))
    (cond (new-location (and (set-robbie-location new-location)
                             (where)))
          (t '(ouch! robbie hit a wall)))))

; Test Case
; (format t "~a~%" (choices 'pantry))

; (format t "~a~%" (look 'north 'pantry))
; (format t "~a~%" (look 'west 'pantry))
; (format t "~a~%" (look 'south 'pantry))

; (format t "~a~%" (how-many-choices))

; (format t "~a~%" (upstairsp 'bedroom))
; (format t "~a~%" (upstairsp 'library))
; (format t "~a~%" (upstairsp 'pantry))

; (format t "~a~%" (onstairsp 'front-stairs))
; (format t "~a~%" (onstairsp 'back-stairs))
; (format t "~a~%" (onstairsp 'pantry))

; (format t "~a~%" (where))

; (format t "~a~%" (move 'south))

(setf loc 'pantry)
(format t "~a~%" (move 'west))
(format t "~a~%" (move 'west))
(format t "~a~%" (move 'north))
(format t "~a~%" (move 'north))
(format t "~a~%" (move 'east))
(format t "~a~%" (move 'south))
(format t "~a~%" (move 'south))
(format t "~a~%" (move 'east))
