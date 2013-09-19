;;; defaults.el --- Default configuration.

;;; Code:

;; Initial settings.
(setq history-length 500)
(setq history-delete-duplicates t)
(setq backup-directory-alist (quote ((".*" . "/tmp/emacs~/"))))
(setq show-parent-delay 0)
(setq ac-auto-start nil)
(setq default-tab-width 4)
(setq tramp-default-method "ssh")

;; Unlock useful shortcuts.
(put 'upcase-region 'disabled nil)             ; c-x c-u
(put 'downcase-region 'disabled nil)           ; c-x c-l
(put 'dired-find-alternate-file 'disabled nil) ; a

;; Defaults.
(setq-default indent-tabs-mode nil)

;; More cutstom settings
(custom-set-variables
 '(global-linum-mode t)		      ; use line numbers
 '(column-number-mode t)          ; use column numbers
 '(font-use-system-font t)        ; use default system fonts
 '(inhibit-startup-screen t)	  ; skip welcome string
 '(scroll-bar-mode (quote right)) ; when window mode, use scrollbars
 '(truncate-lines t)              ; enable lines truncation
 '(delete-selection-mode t))      ; enable overriding of text

;; Hide menu bar and toolbars.
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'tabbar-mode) (tabbar-mode -1))

;; Enable editing extras.
(show-paren-mode t)
(global-linum-mode t)

;; Initialize omit mode container.
(setq omit "")

;; Default shortcuts.
(global-set-key (kbd "C-c M-m") 'mad-reload)
