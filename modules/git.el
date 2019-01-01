;; Git module

(use-package diff-hl
  :ensure t
  :defer 1
  :init (global-diff-hl-mode t))

(use-package magit
  :ensure t
  :defer 1)
