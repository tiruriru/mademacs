;;; init.el --- Loads and sets up Mad Emacs bundle.

;;; Code:

(require 'eshell)
(require 'dired-x)

;; Helper functions.

(defun load-plugins ()
  """ Loads all files from plugins directory. """
  (let ((plugins-count 0)
        (plugins (file-expand-wildcards (concat root-dir "plugins/*.el"))))
    (dolist (plugin plugins)
      (load-file plugin)
      (setq plugins-count (1+ plugins-count)))
    (message "Mad Emacs: %d plugins has been loaded!" plugins-count)))

(defun setup-omit-mode ()
  """ Enables and preconfigures dired omit mode. """
  (if (not (eq omit ""))
      (progn
        (setq dired-omit-files-p t)
        (setq dired-omit-files omit)
        (add-hook 'dired-mode-hook (lambda() (dired-omit-mode 1))))))

(defun init ()
  """ Initializes plugins and default configuration. """
  (load-file (concat root-dir "defaults.el"))
  (load-plugins)
  (setup-omit-mode))

(defun mad-reload ()
  """ Reloads plugins and settings. """
  (interactive)
  (init))

;; Initialize everything.

(setq root-dir (file-name-directory load-file-name))
(add-to-list 'load-path (concat root-dir "packages/") t)
(init)
