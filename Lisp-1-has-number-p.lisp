(defun has-number-p (our-list)
    (if (atom our-list)
        (numberp our-list)
        (some #'has-number-p our-list)))
