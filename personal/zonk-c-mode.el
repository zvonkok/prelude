;;; zonk-c-mode.el --- zonk customization to c-mode
;;
;; Copyright (c) 2011-2016 Zvonko Kosic
;;
;; Author: Zvonko Kosic
;; Keywords: convenience

;;; Commentary:

;; Customization to the default c-mode


;;; Code:
(prelude-require-packages '(smart-tabs-mode))

(smart-tabs-insinuate 'c 'javascript)

(setq c-default-style "linux")
(setq-default c-basic-offset 8
                  tab-width 8)





(provide 'zonk-c-mode)
;; zonk-c-mode.el ends here

