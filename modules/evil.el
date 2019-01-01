(use-package evil
  :ensure
  :config
  (progn
    (evil-mode t)
    ;; Key Chord
    (use-package key-chord
      :ensure
      :config
      (progn
        (setq key-chord-two-keys-delay 0.5)
        ;; Map 'jj' to 'ESC'
        (key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
        (key-chord-mode 1)))
    ))



;    ;; leader shortcuts
;
;    ;; This has to be before we invoke evil-mode due to:
;    ;; https://github.com/cofi/evil-leader/issues/10
;    (use-package evil-leader
;      :init (global-evil-leader-mode)
;      :config
;      (progn
;        (setq evil-leader/in-all-states t)
;        ;; keyboard shortcuts
;        (evil-leader/set-key
;          "a" 'ag-project
;          "A" 'ag
;          "b" 'ido-switch-buffer
;          "c" 'mc/mark-next-like-this
;          "C" 'mc/mark-all-like-this
;          "e" 'er/expand-region
;          "E" 'mc/edit-lines
;          "f" 'ido-find-file
;          "g" 'magit-status
;          "i" 'idomenu
;          "j" 'ace-jump-mode
;          "k" 'kill-buffer
;          "K" 'kill-this-buffer
;          "o" 'occur
;          "p" 'magit-find-file-completing-read
;          "r" 'recentf-ido-find-file
;          "s" 'ag-project
;          "t" 'bw-open-term
;          "T" 'eshell
;          "w" 'save-buffer
;          "x" 'smex
;          )))
;
;    ;; boot evil by default
;    (evil-mode 1))
;  :config
;  (progn
;    ;; use ido to open files
;    (define-key evil-ex-map "e " 'ido-find-file)
;    (define-key evil-ex-map "b " 'ido-switch-buffer)
;
;    ;; jj escapes to normal mode
;    (define-key evil-insert-state-map (kbd "j") 'bw-evil-escape-if-next-char-is-j)
;    (setq
;     ;; h/l wrap around to next lines
;     evil-cross-lines t
;     ;; Training wheels: start evil-mode in emacs mode
;     evil-default-state 'emacs)
;
;    ;; esc should always quit: http://stackoverflow.com/a/10166400/61435
;    (define-key evil-normal-state-map [escape] 'keyboard-quit)
;    (define-key evil-visual-state-map [escape] 'keyboard-quit)
;    (define-key minibuffer-local-map [escape] 'abort-recursive-edit)
;    (define-key minibuffer-local-ns-map [escape] 'abort-recursive-edit)
;    (define-key minibuffer-local-completion-map [escape] 'abort-recursive-edit)
;    (define-key minibuffer-local-must-match-map [escape] 'abort-recursive-edit)
;    (define-key minibuffer-local-isearch-map [escape] 'abort-recursive-edit)
;
;    ;; modes to map to different default states
;    (dolist (mode-map '((comint-mode . emacs)
;                        (term-mode . emacs)
;                        (eshell-mode . emacs)
;                        (help-mode . emacs)
;                        (fundamental-mode . emacs)))
;      (evil-set-initial-state `,(car mode-map) `,(cdr mode-map)))))
;
