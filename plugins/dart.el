;;; plugins/dart.el --- Dart.js settings and extras.

;;; Code:

(require 'dart-mode)

;; File modes.

(add-to-list 'auto-mode-alist (cons "\\.dart$" #'dart-mode))
