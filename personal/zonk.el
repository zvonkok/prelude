
(prelude-require-packages '(spaceline rainbow-delimiters  multiple-cursors mc-extras ess ess-view))


(add-to-list 'load-path "~/.emacs.d/personal/")

(desktop-save-mode 1)



(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)



(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))


;;; Auto refresh in docview
(add-hook 'doc-view-mode-hook 'auto-revert-mode)

(require 'prelude-helm-everywhere)

(setq initial-scratch-message "") ;; Uh, I know what Scratch is for
(setq visible-bell t)             ;; Get rid of the beeps

(when (window-system)
  (tool-bar-mode 0)               ;; Toolbars were only cool with XEmacs
  (when (fboundp 'horizontal-scroll-bar-mode)
    (horizontal-scroll-bar-mode -1))
  (scroll-bar-mode -1))

(require 'multi-term)
(setq multi-term-program "/usr/bin/zsh")

         
 
(require 'ob-sh)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)



(require 'zonk-c-mode)
(require 'zonk-org-mode)
