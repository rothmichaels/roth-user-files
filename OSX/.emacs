;;; Roth's .emacs

;; Basic
(add-to-list 'load-path "~/.emacs.d/")

(require 'package)
(add-to-list 'package-archives
         '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(initial-buffer-choice t))

(server-start)


;;appearance
(set-background-color "#f2eded")
(set-cursor-color 'DarkSeaGreen)

(blink-cursor-mode -1)
;(tool-bar-mode nil)


;; tramp
(require 'tramp)


;; mode-hooks
(defun mh-paredit-mode-on () 
  (paredit-mode 1))

(defun mh-linum-mode-on ()
  (linum-mode 1))


;; Emacs-Lisp
(add-hook 'clojure-mode-hook 'mh-paredit-mode-on)
(add-hook 'clojure-mode-hook 'mh-linum-mode-on)


;; clojure
(require 'clojure-mode)
;; (require 'paredit) if you didn't install via package.el
(add-hook 'clojure-mode-hook 'mh-paredit-mode-on)
(add-hook 'clojure-mode-hook 'mh-linum-mode-on)


;; TeX
;(load "auctex.el" nil t t)
;(setq TeX-auto-save t)
;(setq TeX-parse-self t)
;(setq-default TeX-master nil)

(require 'tex-site)

