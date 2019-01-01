;; Python module
(use-package latex
  :ensure auctex
  :mode ("\\.tex\\'" . latex-mode)
  :interpreter ("latex" . latex-mode)
  :config
  ;;(use-package latex-preview-pane
  ;;  :ensure t
  ;;  :config
  ;;  (latex-preview-pane-enable))
)
