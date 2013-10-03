;;; plugins/_.el --- Default stuff.

;;; Code:

;; Omit those files in dired.

(setq omit (concat omit "^\\.?\\#"))                                       ; emacs
(setq omit (concat omit "\\|^~"))                                          ; vim
(setq omit (concat omit "\\|^\\.DS_Store$"))                               ; mac
(setq omit (concat omit "\\|^\\.git$"))                                    ; git
(setq omit (concat omit "\\|^CVS$"))                                       ; cvs
(setq omit (concat omit "\\|^\\.svn$"))                                    ; svn
(setq omit (concat omit "\\|\\.\\(l\\|s\\)?\\(o\\|a\\)$"))                 ; c/cpp
(setq omit (concat omit "\\|\\.in$\\|^\\.deps$\\|^\\.libs$\\|\\.tmp$"))    ; autotools
(setq omit (concat omit "\\|\\.status$\\|^libtool$\\|^stamp-h1$"))         ; ...
(setq omit (concat omit "\\|^automate.cache$\\|^build-\\(m4\\|aux\\)$"))   ; m4
(setq omit (concat omit "\\|\\.tmp$"))                                     ; temporal

;; Custom file modes.

(add-to-list 'auto-mode-alist (cons "\\.emacs$" #'emacs-lisp-mode))

;; Custom shortcuts.

(global-set-key (kbd "C-c k") 'kill-whole-line)
