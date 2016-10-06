; 7.15
(defun rank (rank-suit)
  "Get the rank from a rank-suit pair list."
  (first rank-suit))

(defun suit (rank-suit)
  "Get the suit from a rank-suit pair list."
  (second rank-suit))

(defvar my-hand)
(setf my-hand '((3 hearts)
                (5 clubs)
                (2 diamonds)
                (4 diamonds)
                (ace spades)))

(defun count-suit (suit-to-search-for hand)
  "Count how many of a particular suit in hand."
  (length (remove-if-not #'(lambda (rank-suit)
                     (equal (suit rank-suit) suit-to-search-for))
                 hand)))

(defvar colors)
(setf colors '((clubs black)
               (diamonds red)
               (hearts red)
               (spades black)))

(defun color-of (rank-suit)
  "Determine the color of a rank-suit pair."
  (let ((suit (suit rank-suit)))
    (second (find-if #'(lambda (rank-suit)
                         (equal (first rank-suit) suit))
                     colors))))

(defun first-red (hand)
  "Look for the first card of a hand that is of a red suit.
  NIL if none are."
  (find-if #'(lambda (rank-suit)
               (equal (color-of rank-suit) 'red))
           hand))

(defun black-cards (hand)
  "Returns all the list of the black cards in a hand."
  (remove-if-not #'(lambda (rank-suit)
                     (equal (color-of rank-suit) 'black))
                 hand))

(defun what-ranks (suit-to-search-for hand)
  "Returns the ranks of all cards beloning to that suit."
  (let ((suits (remove-if-not #'(lambda (rank-suit)
                                  (equal (suit rank-suit) suit-to-search-for)) 
                              hand)))
    (mapcar #'rank suits)))

(defvar all-ranks)
(setf all-ranks '(2 3 4 5 6 7 8 9 10 jack queen king ace))

(defun beforep (x y l)
  "Returns true if X appears before Y in L."
  (member y (member x l)))

(defun higher-rank-p (card-1 card-2)
  "Returns true if card-1 has a higher rank than card-2."
  (not (endp (beforep card-2 card-1 all-ranks))))


; Test Cases
(format t "~a~%" (rank '(2 clubs)))
(format t "~a~%" (suit '(2 clubs)))
(format t "~a~%" (count-suit 'diamonds my-hand))
(format t "~a~%" (color-of '(6 hearts)))
(format t "~a~%" (first-red my-hand))
(format t "~a~%" (black-cards my-hand))
(format t "~a~%" (what-ranks 'diamonds my-hand))
(format t "~a~%" (what-ranks 'spades my-hand))
(format t "~a~%" (higher-rank-p 2 'jack))
