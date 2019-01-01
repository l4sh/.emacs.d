;; extra-csharp.el -- C# module
(use-package csharp-mode
  :mode ("\\.cs\\'" . csharp-mode)
  :interpreter ("csharp" . csharp-mode)
  :ensure t
  :config
  ;;(with-eval-after-load 'csharp-mode
  ;;  (add-to-list 'c-default-style '(csharp-mode . "defaultc#")))
  (use-package highlight-indent-guides
    :ensure t
    :config
    (setq highlight-indent-guides-method 'character)
    (add-hook 'csharp-mode-hook 'highlight-indent-guides-mode))
  (use-package omnisharp
    :ensure t
    :config
    ;;(setq omnisharp-server-executable-path "~/.emacs.d/omnisharp/run")
    (add-hook 'csharp-mode-hook 'omnisharp-mode)
    (eval-after-load
      'company
      '(add-to-list 'company-backends 'company-omnisharp))
    (add-hook 'csharp-mode-hook #'company-mode)
    (add-hook 'csharp-mode-hook #'flycheck-mode))
  )
