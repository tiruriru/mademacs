;;; plugins/ruby.el --- Ruby settings and extras.

;;; Code:

;; Omit files.
(setq omit (concat omit "\\|\\.rbc$"))

;; File modes.
(add-to-list 'auto-mode-alist (cons "Gemfile$" #'ruby-mode))
(add-to-list 'auto-mode-alist (cons "Rakefile$" #'ruby-mode))
(add-to-list 'auto-mode-alist (cons "Vagrantfile$" #'ruby-mode))
(add-to-list 'auto-mode-alist (cons "\\.ru$" #'ruby-mode))
(add-to-list 'auto-mode-alist (cons "\\.rake$" #'ruby-mode))
(add-to-list 'auto-mode-alist (cons "\\.gemfile$" #'ruby-mode))

;; Friendlier ruby indentation.
(setq ruby-deep-indent-paren nil)
(setq ruby-deep-arglist nil)
