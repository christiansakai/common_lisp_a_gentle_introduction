; 4.19
(cond ('x 
       (cond ('y
              (cond ('z
                     (cond ('w t)
                           (t nil))
                     (t nil)))
              (t nil)))
       (t nil)))

(if 'x
  (if 'y
    (if 'z
      (if 'w
        nil)
      nil)
    nil)
  nil)
