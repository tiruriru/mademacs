;;; dired-extras.el --- Extra configuration for dired.

;;; Code:

(require 'ls-lisp)

;; Customize sorting and default behavior of dired.

(setq ls-lisp-use-insert-directory-program nil)
(setq ls-lisp-dirs-first t)
(setq ls-list-ignore-case t)
