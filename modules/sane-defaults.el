;; core-sane-defaults.el -- Saner defaults for emacs

;; Answer 'yes'/'no' with just 'y'/'n'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Save backups to a single location
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

;; Display line and column numbers
(setq line-number-mode 1)
(setq column-number-mode 1)

;; Set encoding to UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Disable scrollbar & use yascroll
(scroll-bar-mode -1)
(use-package yascroll
  :ensure t
  :config
  (global-yascroll-bar-mode 1))

;; Display whitespace characters
(global-whitespace-mode 1)
;;(setq whitespace-style '(face space tabs empty trailing lines-tail))
(setq whitespace-style
  '(face tabs space-before-tab space-after-tab trailing lines-tail))

;; Save a list of recent files visited.
(recentf-mode 1)
(setq recentf-max-saved-items 100)

;; Default web browser
(setq browse-url-browser-function 'browse-url-chrome)

;; Org mode initial visibility
;; Sometimes emacs freezes when loading very large folded org files
(setq org-startup-folded nil)

;; Show paren mode
(show-paren-mode 1)
(setq show-paren-delay 0)

(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#def")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)
