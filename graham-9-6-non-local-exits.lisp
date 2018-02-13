a. using catch and throw

(defun shortest-path (start end net)
  (catch 'done (bfs end (list (list start)) net)))



(defun bfs (end queue net)
  (if (empty-queue-p queue)
      nil
    (let* ((path (car queue))
           (node (car path)))
      (bfs end 
           (append (cdr queue)
                   (new-paths path node net end))
           net))))



(defun new-paths (path node net end)
  (mapcan #'(lambda (n)
              (cond
               ((eql n end) (throw 'done (reverse (cons n path))))
               ((not (member n path)) (list (cons n path)))
               (t nil)))
  (cdr (assoc node net))))




b. without catch and throw

(defun shortest-path (start end net)
  (bfs end (list (list start)) net))


(defun bfs (end queue net)
  (if (empty-queue-p queue)
      nil
    (let* ((path (car queue))
           (node (car path))
           (newpaths (new-paths path node net)))     
      (if (assoc end newpaths)
          (reverse (assoc end newpaths))
        (bfs end 
             (append (cdr queue)
                     new-paths)
             net)))))


(defun new-paths (path node net)
  (mapcan #'(lambda (n)
              (cond
               ((not (member n path)) (list (cons n path)))
               (t nil)))
  (cdr (assoc node net))))
