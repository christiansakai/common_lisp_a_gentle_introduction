; 5.6
(defun throw-die ()
  (+ 1 (random 6)))

(defun throw-dice ()
  (list (throw-die) (throw-die)))

(defun snake-eyes-p (throw)
  (and (= (car throw) 1) (= (cadr throw) 1)))

(defun boxcars-p (throw)
  (and (= (car throw) 6) (= (cadr throw) 6)))

(defun instant-win-p (throw)
  (if (or (= (+ (car throw) (cadr throw)) 7)
          (= (+ (car throw) (cadr throw)) 11)) t))

(defun instant-loss-p (throw)
  (if (or (= (+ (car throw) (cadr throw)) 2)
          (= (+ (car throw) (cadr throw)) 3)
          (= (+ (car throw) (cadr throw)) 12)) t))

(defun say-throw (throw)
  (cond ((snake-eyes-p throw) 'snake-eyes)
        ((boxcars-p throw) 'boxcars)
        (t (+ (car throw) (cadr throw)))))

(defun craps ()
  (let* ((a-throw (throw-dice))
         (win (instant-win-p a-throw))
         (lose (instant-loss-p a-throw)))
    (cond (win (list 'throw
                      (car a-throw)
                      'and
                      (cadr a-throw)
                      '--
                      (say-throw a-throw)
                      '-- 'you 'win))
          (lose (list 'throw
                       (car a-throw)
                       'and
                       (cadr a-throw)
                       '--
                       (say-throw a-throw)
                       '-- 'you 'lose))
           (t (list 'throw
                    (car a-throw)
                    'and
                    (cadr a-throw)
                    '-- 'your 'point 'is
                    (+ (car a-throw) (cadr a-throw)))))))


(defun try-for-point (n)
  (let* ((a-throw (throw-dice))
        (sum (+ (car a-throw) (cadr a-throw))))
    (cond ((= sum 7) (list 'throw
                           (car a-throw)
                           'and 
                           (cadr a-throw)
                           '--
                           sum
                           '-- 'you 'lose))
          ((= sum n) (list 'throw
                           (car a-throw)
                           'and
                           (cadr a-throw)
                           '--
                           sum
                           '-- 'you 'win))
          (t (list 'throw
                   (car a-throw)
                   'and 
                   (cadr a-throw)
                   '--
                   sum
                   '-- 'throw 'again)))))

; Test Case
; (format t "~a~%" (throw-die))
; (format t "~a~%" (throw-dice))

; (format t "~a~%" (snake-eyes-p '(1 1)))

; (format t "~a~%" (boxcars-p '(6 6)))

; (format t "~a~%" (instant-win-p '(3 4)))
; (format t "~a~%" (instant-win-p '(5 6)))

; (format t "~a~%" (instant-loss-p '(1 1)))
; (format t "~a~%" (instant-loss-p '(1 2)))
; (format t "~a~%" (instant-loss-p '(6 6)))

; (format t "~a~%" (say-throw '(3 4)))
; (format t "~a~%" (say-throw '(1 1)))
; (format t "~a~%" (say-throw '(6 6)))

; (format t "~a~%" (craps))

; (format t "~a~%" (try-for-point 6))
; (format t "~a~%" (try-for-point 6))
; (format t "~a~%" (try-for-point 9))
