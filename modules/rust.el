;; Rust module
(use-package rust-mode
  :mode ("\\.rs\\'" . rust-mode)
  :interpreter ("rs" . rust-mode)
  :ensure t
  :config
  (use-package racer
    :ensure t
    :config
    (add-hook 'rust-mode-hook #'racer-mode)
    (add-hook 'racer-mode-hook #'eldoc-mode)
    (use-package company
      :ensure t
      :config
      (add-hook 'racer-mode-hook #'company-mode)
      (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
      (setq company-tooltip-align-annotations t))
    )
  (setq rust-format-on-save t)
)
