;; extra-projectile.el -- Projectile mode configuration

(use-package projectile
  :ensure t
  :defer t
  :bind (("C-x p o" . projectile-switch-open-project)
         ("C-x p s" . projectile-switch-project)
         ("C-x p b" . projectile-switch-to-buffer))
  :config
  (projectile-global-mode)
  (setq projectile-enable-caching t)
  (setq projectile-completion-system 'ivy)
  )
