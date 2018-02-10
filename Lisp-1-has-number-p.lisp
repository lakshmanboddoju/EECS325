(defun has-number-p (our_list)
    (cond
        ((numberp our_list) t)
        ((and (not (null our_list)) (listp our_list)) (some #'has-number-p our_list))
        (t nil)))
