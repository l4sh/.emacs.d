;; core-package-management.el -- Package management module

(require 'package)
(package-initialize nil)

;; Repositories
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/"))
;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

;; Always ensure the package is installed when using use-package
;(setq use-package-always-ensure t)

;; Update package information
(or (file-exists-p package-user-dir)
    (package-refresh-contents))
