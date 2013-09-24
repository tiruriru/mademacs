;;; plugins/redo.el --- Enables redo mode.

;;; Code:

(require 'redo+)

;; Custom shortcuts.

(global-set-key (kbd "C-/") 'undo)
(global-set-key (kbd "C-x u") 'undo)
(global-set-key (kbd "C-c u") 'redo)
