;; core-tramp.el -- Tramp mode configuration

(use-package tramp
  :ensure t
  :config
  (tramp-set-completion-function
   "ssh"
   '((tramp-parse-shosts "~/.ssh/known_hosts")))
  (setq tramp-default-method "ssh"))
