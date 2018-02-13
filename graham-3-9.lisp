(defun longest-path (start end net)
  (or (reverse (depth-first-search end (list start) net))
      (and (eql start end) (list start))))
