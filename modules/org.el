;; core-org.el -- Org mode module
(use-package org
  :mode ("\\.org\\'" . org-mode)
  :interpreter ("org" . org-mode)
  :ensure t
  :bind (("C-c a" . org-agenda))

  :init
  ;;(use-package visual-fill-column
  ;;  :ensure t
  ;;  :config
  ;;  (add-hook 'org-mode-hook #'visual-fill-column-mode)
  ;;  (add-hook 'org-mode-hook #'visual-line-mode))
  :config
  (add-hook 'org-mode-hook #'org-indent-mode)
  (add-hook 'org-mode-hook (lambda () (flyspell-mode 1)))

  ;; Syntax highlight in org-mode code blocks
  (setq org-src-fontify-natively t)
  ;; Org capture
  (define-key global-map "\C-cc" 'org-capture)

  )

;; Org pomodoro
(use-package org-pomodoro
  :ensure t
  :after org
  :bind (("C-c o" . org-pomodoro))
  :config
  (setq org-pomodoro-ticking-sound-p nil)
  (setq org-pomodoro-start-sound-p nil)
  (setq org-pomodoro-length 15)
  (setq org-pomodoro-short-break-length 3)
  (setq org-pomodoro-long-break-length 15))
(use-package gtk-pomodoro-indicator
  :ensure t
  :after org-pomodoro
  :config)

;; Org Gcal
(use-package org-gcal
  :ensure t
  :config
  (add-hook 'org-agenda-mode-hook (lambda () (org-gcal-sync) ))
  (add-hook 'org-capture-after-finalize-hook (lambda () (org-gcal-sync) ))
  )
