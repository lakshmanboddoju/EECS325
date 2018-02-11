(defun ?contains (x y lsts)
  (cond
   ((null lsts) nil)
   ((atom y) (match-p (car x) y lsts))
   (t 
    (append (match-p (car x) y lsts)
            (mapcan #'(lambda (a) (?contains x a lsts)) y)))))


