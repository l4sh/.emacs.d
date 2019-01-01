;; Python module
(use-package php-mode
  :mode ("\\.php\\'" . php-mode)
  :interpreter ("php" . php-mode)
  :ensure t
  :config
  
  (use-package highlight-indent-guides
    :ensure t
    :config
    (setq highlight-indent-guides-method 'character))
)
