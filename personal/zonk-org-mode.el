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

(add-to-list 'org-latex-classes
             '("per-file-class"
               "\\documentclass[oneside,a4paper]{scrartcl}
            [NO-DEFAULT-PACKAGES]
            [NO-PACKAGES]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(provide 'zonk-org-mode)
;; zonk-org-mode.el ends here

