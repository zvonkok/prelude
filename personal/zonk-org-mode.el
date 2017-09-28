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
 '((R . t)
   (ditaa . t)
   (latex . t)
   (shell .t)
  )
 )


(org-add-link-type
 "latex" nil
 (lambda (path desc format)
   (cond
    ((eq format 'html)
     (format "<span class=\"%s\">%s</span>" path desc))
    ((eq format 'latex)
     (format "\\%s{%s}" path desc)))))




(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)   
(add-hook 'org-mode-hook 'org-display-inline-images)   

(setq org-confirm-babel-evaluate nil)


(setq org-latex-pdf-process (quote ("lualatex --shell-escape --sync=1 --file-line-error --output-directory=%o %f")))

(setq org-latex-listings 'minted)
(setq org-latex-minted-options
      '(("bgcolor" "bg")
        ("fontsize" "\\footnotesize")

        ))

(add-to-list 'org-latex-packages-alist
             '("" "tikz" t)
             '("" "minted" t)
             )



(eval-after-load "preview"
  '(add-to-list 'preview-default-preamble "\\PreviewEnvironment{tikzpicture}" t))

(setq org-latex-create-formula-image-program 'imagemagick)





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


(add-to-list 'org-latex-classes
             '("tufte"
               "\\documentclass{tufte-book}
            [NO-DEFAULT-PACKAGES]
            [NO-PACKAGES]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))







(provide 'zonk-org-mode)
;; zonk-org-mode.el ends here

