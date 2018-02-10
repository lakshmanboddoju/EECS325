(defun greater (x y)
    (if  (> x y) x y))

(defun has-list-p (list)
    (cond
        ((null list) nil)
        ((listp (car list)) t) 
        (t (has-list-p (cdr list)))))   

(defun print-dots (num)
    (loop for i from 1 to num
        do (format t ".")))

(defun print-dots (num)
    (when (> num 0)
        (format t ".") (print-dots (1- num))))        

(defun get-a-count (list)
    (- (length list) (length (remove 'a list))))
   
(defun get-a-count (our_list)
    (loop for x in our_list
          for y = (eql x 'a)
          count y))

(defun get-a-count (our_list)
    (cond
        ((null our_list) 0)
        ((eql (car our_list) 'a) (1+ (get-a-count (cdr our_list))))
        (t (get-a-count (cdr our_list)))))

(defun summit (list)
    (cond 
    (t (reduce #'+ (remove nil list)))))
    
(defun summit (lst)
    (let ((new_lst (remove nil lst)))
    (apply #' + new_lst)))
    
(defun summit (lst)
    (apply #'+ (remove nil lst)))
    
(defun summit (lst)
    (let ((x (car lst)))
    (cond
        ((null lst) 0)
        ((null x) (summit (cdr lst)))
        (t (+ x (summit (cdr lst)))))))
        
(defun summit (lst)
    (if (not (null lst))
        (let ((x (car lst)))
        (cond
            ((null x) (summit (cdr lst)))
            (t (+ x (summit (cdr lst))))))
        0))