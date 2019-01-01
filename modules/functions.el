(defun insert-current-date ()
  (interactive)
  "Insert Current date in yyyy-mm-dd format"
    (insert
      (shell-command-to-string "echo -n $(date +%Y-%m-%d)")))
