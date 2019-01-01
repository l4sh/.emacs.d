;; init.el -- Emacs initialization file
;; Author: Luis Salazar


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq emacs-dir (expand-file-name "~/.emacs.d/"))

(defun load-module (name)
  "Load configuration module"
  (load-file
    (expand-file-name
      (concat name ".el")
      (expand-file-name "modules" emacs-dir))
    ))

(defun config-reload ()
  "Reload emacs configuration"
  (interactive)
  (load-file (expand-file-name "init.el" emacs-dir)))

;; Load modules
(load-module "package-management")
(load-module "sane-defaults")
(load-module "ui")
(load-module "evil")
(load-module "which-key")
(load-module "completion")
(load-module "functions")
(load-module "tramp")
(load-module "flyspell")
(load-module "editorconfig")
;;; Languages
(load-module "python")
(load-module "markdown")
(load-module "php")
(load-module "jsx")
(load-module "js")
(load-module "csharp")
(load-module "rust")
(load-module "latex")
;;; Other
(load-module "git")
(load-module "org")
(load-module "projectile")
(load-module "docker")
(load-module "social")

;;; Load configuration
(load-file (expand-file-name "config.el" emacs-dir))

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(electric-pair-mode t)
 '(package-selected-packages
   (quote
    (spaceline-all-the-icons spaceline-config spaceline org-pomodoro doom-themes org-gcal twittering-mode omnisharp racer latex-preview-pane auctex rust-mode docker-compose-mode dockerfile-mode web-beautify rainbow-delimiters smartparens yaml-mode ansible csharp csharp-mode emojify projectile magit dracula-theme yascroll editorconfig rjsx-mode php-mode markdown-mode highlight-indent-guides company-anaconda anaconda-mode flycheck-pyflakes diff-hl use-package monokai-theme key-chord evil)))
 '(projectile-mode t nil (projectile))
 '(spaceline-helm-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
