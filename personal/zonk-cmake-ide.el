;;; zonk-cmake-ide.el --- zonk customization to cmake-ide
;;
;; Copyright (c) 2011-2016 Zvonko Kosic
;;
;; Author: Zvonko Kosic
;; Keywords: convenience

;;; Commentary:

;; Customization to the default cmake-ide


;;; Code:
(prelude-require-packages '(cmake-ide))


(require 'rtags) ;; optional, must have rtags installed
(cmake-ide-setup)



(provide 'zonk-cmake-ide)
;; zonk-cmake-ide.el ends here

