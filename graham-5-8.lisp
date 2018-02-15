(defun max-min (vector &key (start 0) (end (length vector)))
  (cond
   ((>= start end) (values nil nil))
   (t
    (let ((current (aref vector start)))
      (max-min-helper vector start end current current)))))

(defun max-min-helper (vector start end maxval minval)
  (if (= start end)
      (values maxval minval)
    (let ((current (aref vector start)))
      (max-min-helper vector (1+ start) end (max maxval current) (min minval current)))))
