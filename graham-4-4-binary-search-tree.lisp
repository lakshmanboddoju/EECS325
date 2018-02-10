(defun bst-elements (tree)
  (when tree
    (append (bst-elements (node-r tree))
            (cons (node-elt tree)
                  (bst-elements (node-l tree))))))


(defun bst-elements (tree)
  (let ((lst nil))
    (bst-traverse #'(lambda (x) (push x lst)) tree)
    lst))
