;;; plugins/scrolling.el --- Enables smooth scrolling.

;;; Code:

;; Scroll smoothly when moving up or down through the lines.

(setq scroll-step 1)
(setq scroll-conservatively 10000)

;; Override default shortcuts.

(global-set-key (kbd "M-v") 'scroll-down-line)
(global-set-key (kbd "C-v") 'scroll-up-line)
