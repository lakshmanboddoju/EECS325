(defun longest-path (start end net)
  (or (reverse (depth-first-search end (list start) net))
      (and (eql start end) (list start))))


(defun dfs (end current net)
  (do ((best nil (longer-path best (get-path end (car neighbors) current best net)))
       (neighbors (cdr (assoc (car current) net)) (cdr neighbors)))
      ((null neighbors) best)))

(defun get-path (end neighbors current best net)
  (let ((path (if neighbors (cons neighbors current) nil)))
    (cond
     ((null path) nil)
     ((eql (car path) end) path)
     ((member (car path) (cdr path)) best)
     (t (dfs end path net)))))

(defun longer-path (p1 p2)
  (if (> (length p1) (length p2))
      p1
    p2))
