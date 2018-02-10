(defun show-dots (lst)
  (cond
   ((atom lst) (format t "~S" lst))
   (t
    (format t "(")
    (show-dots (car lst))
    (format t " . ")
    (show-dots (cdr lst))
    (format t ")"))))


(defun show-list (lst)
  (cond
   ((atom lst) (format t "~S" lst))
   (t
    (format t "[")
    (show-list (car lst))
    (do ((x (cdr lst) (cdr x)))
        ((atom x) (unless (null x) (format t " . ~S" x)))
      (format t " ")
      (show-list (car x)))      
    (format t "]"))))
