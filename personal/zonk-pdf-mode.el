;;; zonk-pdf-mode.el --- zonk customization to pdf-mode
;;
;; Copyright (c) 2011-2016 Zvonko Kosic
;;
;; Author: Zvonko Kosic
;; Keywords: convenience

;;; Commentary:

;; Customization to the default doc-view mode


;;; Code:
(prelude-require-packages '(pdf-tools interleave))


(require 'pdf-view)

(setq pdf-info-epdfinfo-program "/usr/bin/epdfinfo")

(setq pdf-view-midnight-colors `(,(face-attribute 'default :foreground) .
                                 ,(face-attribute 'default :background)))

(add-to-list 'auto-mode-alist '("\\.pdf\\'" . pdf-view-mode))

(add-hook 'pdf-view-mode-hook (lambda ()
                                (pdf-view-midnight-minor-mode)))

(provide 'init-pdfview)


(provide 'zonk-pdf-mode)
;; zonk-pdf-mode.el ends here

