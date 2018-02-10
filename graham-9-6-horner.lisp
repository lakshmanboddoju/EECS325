(defun horner (var &rest lst)
  (reduce #'(lambda (x y) 
              (+ (* x var) y)) lst))
