;;; zonk-ess-mode.el --- zonk customization to c-mode
;;
;; Copyright (c) 2011-2016 Zvonko Kosic
;;
;; Author: Zvonko Kosic
;; Keywords: convenience

;;; Commentary:

;; Customization to the default ess-mode


;;; Code:
(prelude-require-packages '(ess))

;; ESSAutoParens
;; enable skeleton-pair insert globally
(setq skeleton-pair t)
;;(setq skeleton-pair-on-word t)
;; Uncomment if curly braces won't close in .R files
;; https://github.com/emacs-ess/ESS/issues/296#issuecomment-189614821
;;(define-key ess-mode-map (kbd "{") nil)
;;(define-key ess-mode-map (kbd "}") nil) 
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\`") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "<") 'skeleton-pair-insert-maybe)



(provide 'zonk-ess-mode)
;; zonk-ess-mode.el ends here

