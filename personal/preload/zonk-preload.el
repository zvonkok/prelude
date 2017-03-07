
(add-to-list 'load-path "~/.emacs.d/personal/preload")
(add-to-list 'load-path "~/.emacs.d/personal/git/emacs-material-theme")

;; (require 'powerline)

;; (setq powerline-utf-8-separator-left        #xe0b0
;;       powerline-utf-8-separator-right       #xe0b2
;;       airline-utf-glyph-separator-left      #xe0b0
;;       airline-utf-glyph-separator-right     #xe0b2
;;       airline-utf-glyph-subseparator-left   #xe0b1
;;       airline-utf-glyph-subseparator-right  #xe0b3
;;       airline-utf-glyph-branch              #xe0a0
;;       airline-utf-glyph-readonly            #xe0a2
;;       airline-utf-glyph-linenumber          #xe0a1)

;; (require 'airline-themes)
;; (load-theme 'airline-solarized-gui)
(require 'spaceline-config)
(spaceline-spacemacs-theme)
(spaceline-helm-mode)

(require 'material-theme)
(load-theme 'material t)
(disable-theme 'zenburn)
(setq prelude-theme 'material)


