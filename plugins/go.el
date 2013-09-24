;;; plugins/go.el --- Go settings and extras.

;;; Code:

(require 'go-mode)

;; File modes.

(add-to-list 'auto-mode-alist (cons "\\.go$" #'go-mode))

;; Custom hooks.

(add-hook 'before-save-hook 'gofmt-before-save)

;; Custom shortcuts for go mode.

(add-hook
 'go-mode-hook
 '(lambda()
    (define-key go-mode-map (kbd "C-c I") 'go-goto-imports)
    (define-key go-mode-map (kbd "C-c R") 'go-remove-unused-imports)
    (define-key go-mode-map (kbd "C-c A") 'go-import-add)
    (define-key go-mode-map (kbd "C-c F") 'gofmt)))
