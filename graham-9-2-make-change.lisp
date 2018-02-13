(defun make-change (cents &optional (lst '(25 10 5 1)))
 (values-list (make-change-helper cents lst)))


(defun make-change-helper (cents lst)
  (cond
   ((null lst) nil)
   (t
    (multiple-value-bind (x y)
        (floor cents (car lst))
      (cons x (make-change-helper y (cdr lst)))))))
