(use-package spaceline
  :ensure t
  :config
  (spaceline-spacemacs-theme)
  ;(setq-default mode-line-format '("%e" (:eval (spaceline-ml-main))))
  )


(use-package doom-themes
  :ensure t
  :config
  (use-package all-the-icons
    :ensure t)
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
    doom-themes-enable-italic t) ; if nil, italics is universally disabled

  ;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
  ;; may have their own settings.
  (load-theme 'doom-nord t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)

  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (doom-themes-treemacs-config)

  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; Set font
;;(set-default-font "DejaVu Sans Mono")
(set-default-font "Misc Tamsyn 13")

;; Disable welcome screen
(setq inhibit-splash-screen 1)
(setq inhibit-startup-message 1)

;; Disable automatic package loading
(setq package-enable-at-startup nil)

;; Disable toolbar
(tool-bar-mode -1)

;; Disable menu bar
(menu-bar-mode -1)

;; Line numbers
(global-linum-mode 1)
(setq linum-format "%4d ")
;;; Disable linum mode in doc view mode (Fixes freeze when opening PDF)
(add-hook 'doc-view-mode-hook
  (lambda ()
    (linum-mode -1)))


;; Window sizing
(use-package golden-ratio
  :ensure t
  :config
  (golden-ratio-mode 1)
  (setq golden-ratio-auto-scale t))
