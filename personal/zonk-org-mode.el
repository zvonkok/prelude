;;; zonk-org-mode.el --- zonk customization to org-mode
;;
;; Copyright (c) 2011-2016 Zvonko Kosic
;;
;; Author: Zvonko Kosic
;; Keywords: convenience

;;; Commentary:

;; Customization to the default org-mode


;;; Code:
(prelude-require-packages '(org))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t))
 )


(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)   
(add-hook 'org-mode-hook 'org-display-inline-images)   

(setq org-confirm-babel-evaluate nil)

(require 'ox-context)
 
(provide 'zonk-org-mode)
;; zonk-org-mode.el ends here

