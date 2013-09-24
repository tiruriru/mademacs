;;; plugins/trailing-spaces.el --- trailing whitespaces killer.

;;; Commentary:

;; Plugin enables killing trailing whitespaces when file is being saved.

;;; Code:

;; Editing hooks.
(add-hook 'before-save-hook 'delete-trailing-whitespace)
