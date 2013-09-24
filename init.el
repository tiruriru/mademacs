;;; init.el --- Loads and sets up Mad Emacs bundle.

;;; Code:

(require 'eshell)
(require 'dired-x)

;; Figure out where are we loaded from.
(setq root-dir (file-name-directory load-file-name))

;; Load default settings.
(load-file (concat root-dir "defaults.el"))

;; Set up autoload paths.
(add-to-list 'load-path (concat root-dir "packages/") t)

;; Global defaults.

;; Helper functions.
(defun load-plugins ()
  (let ((plugins-count 0)
        (plugins (file-expand-wildcards (concat root-dir "plugins/*.el"))))
    (dolist (plugin plugins)
      (load-file plugin)
      (setq plugins-count (1+ plugins-count)))
    (message "Mad Emacs: %d plugins has been loaded!" plugins-count)))

(defun mad-reload ()
  (interactive)
  (load-plugins))

;; Load selected plugins.
(load-plugins)

;; Use dired omit mode when omit files are defined.
(if (not (eq omit ""))
    (progn
      (setq dired-omit-files-p t)
      (setq dired-omit-files omit)
      (add-hook 'dired-mode-hook (lambda() (dired-omit-mode 1)))))
