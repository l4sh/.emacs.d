;; Python module
(use-package js2-mode
  :mode ("\\.js\\'" . js2-mode)
  :interpreter ("javascript" . js2-mode)
  :config
  (add-hook 'python-mode-hook 'smartparens-mode)
  (add-hook 'python-mode-hook 'rainbow-delimiters-mode)
 ; (add-hook 'python-mode-hook 'yas-minor-mode)
  (add-hook 'python-mode-hook 'highlight-indent-guides-mode)
  (use-package highlight-indent-guides
    :ensure t
    :config
    (setq highlight-indent-guides-method 'character))
)
