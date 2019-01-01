;; Python module
(use-package python
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python" . python-mode)
  :config
 ; (add-hook 'python-mode-hook 'yas-minor-mode)

  (use-package flycheck-pyflakes
    :ensure t
    :config
    (add-hook 'python-mode-hook 'flycheck-mode)
    (add-to-list 'flycheck-disabled-checkers 'python-flake8)
    (add-to-list 'flycheck-disabled-checkers 'python-pylint))

  (setq warning-suppress-types '((python)
                                  (emacs)))


  (use-package company-anaconda
    :ensure t
    :init
    (use-package company
      :ensure t)
    (use-package anaconda-mode
      :ensure t
      :bind ("C-c C-d" . anaconda-mode-show-doc)
      :config
      (setq python-shell-interpreter "ipython3")
      (add-hook 'python-mode-hook 'anaconda-mode))
    :config
    (add-hook 'python-mode-hook 'company-anaconda)
    (add-to-list 'company-backends 'company-anaconda)
    (add-hook 'python-mode-hook 'company-mode)
   )

  (use-package smartparens
    :ensure t
    :config
    (add-hook 'python-mode-hook 'smartparens-mode))

  (use-package rainbow-delimiters
    :ensure t
    :config
    (add-hook 'python-mode-hook 'rainbow-delimiters-mode))


  (use-package highlight-indent-guides
    :ensure t
    :config
    (add-hook 'python-mode-hook 'highlight-indent-guides-mode)
    (setq highlight-indent-guides-method 'character))
)
