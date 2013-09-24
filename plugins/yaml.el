;;; plugins/yaml.el --- YAML settings and extras.

;;; Code:

(require 'yaml-mode)

;; File modes.
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
