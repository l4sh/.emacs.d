;; core-which-key.el -- Which key configuration
(use-package which-key
  :ensure t
  :config
  ;;;(setq which-key-popup-type 'minibuffer)
  (setq which-key-popup-type 'side-window)
  (setq which-key-side-window-location 'right)
  (setq which-key-side-window-max-width 0.5)
  (setq which-key-side-window-max-height 0.5)
  ;;(which-key-setup-side-window-right-bottom)
  (which-key-mode))
