;;; dired-find.el --- Dired mode extras for finding files.

;;; Commentary:

;; `dired-find` - performs search of the pattern in current workspace.

;;; Code:

;; Helper tools.

(defun dired-find (pattern)
  "Run `find-name-dired' in `workspace-dir' for the given PATTERN."
  (interactive "sFind file: ")
  (find-name-dired (dired-current-directory) pattern))

;; Dired mode shortcuts.

(add-hook
 'dired-mode-hook
 '(lambda()
    (define-key dired-mode-map (kbd "s") 'dired-find)))
