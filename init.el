

;(define-key global-map (kbd "<apps>") 'execute-extended-command);; untuk winsdows (komoputer kantor
;----------------------------------------




(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )



;;(define-key global-map (kbd "RET") 'newline-and-indent)
;;(define-key global-map (kbd "<apps>") 'execute-extended-command)

(global-linum-mode 1)

;autocoomplete--------------------
(require 'auto-complete-sage)
(global-auto-complete-mode t)
(require 'auto-complete-auctex)
;----------------------------------------






;;; parentheses marking ---------------------
(show-paren-mode t)               ;; turn paren-mode on
(set-face-foreground 'show-paren-mismatch-face "red") 
(set-face-attribute 'show-paren-mismatch-face nil 
                    :weight 'bold :underline t :overline nil :slant 'normal)
;------------------------------------------


;;;latex normal font---only work with auctex----------------------
;; Only change sectioning colour
(setq font-latex-fontify-sectioning 'color)
;; super-/sub-script on baseline
(setq font-latex-script-display (quote (nil)))
;; Do not change super-/sub-script font
(custom-set-faces
 '(font-latex-subscript-face ((t nil)))
 '(font-latex-superscript-face ((t nil)))
 )
; Exclude bold/italic from keywords
(setq font-latex-deactivated-keyword-classes
    '("italic-command" "bold-command" "italic-declaration" "bold-declaration"))


;;  (eval-after-load "tex-mode" '(fset 'tex-font-lock-suscript 'ignore)) ;; disable auto subscript for latex file


;(require 'bibtex)

;-------------------------------------------
;;(cd "/home/puth/Documents/Putranto/TUe/Binary sudoku") not working


(setq reftex-plug-into-AUCTex t)
(setq-default TeX-PDF-mode t)
(setq-default TeX-engine 'luatex)

;;(setq latex-run-command "pdflatex")

;;(cd "E:\\s3\\coding_theory\\modulation_codes-erasure_decoding\\paper")


(set-register ?i (cons 'file "~/.emacs.d/init.el"))


;enter auto indent---------------------

  (setq auto-indent-on-visit-file t) ;; If you want auto-indent on for files
  (require 'auto-indent-mode)
 (auto-indent-global-mode)



;;(electric-indent-mode 1)
;(define-key global-map (kbd "RET") 'newline-and-indent)

;;(add-hook 'lisp-mode-hook '(lambda ()  (local-set-key (kbd "RET") 'newline-and-indent))) ;;not working

;;-------------------------------------------

;;; Indentation for python
;; Enter key executes newline-and-indent


;; (defun set-sage-newline-and-indent ()
;;   "change auto indent with normal one"
;;   (setq auto-indent-newline-function 'newline-and-indent))
;; (add-hook 'sage-shell:sage-mode-hook 'set-sage-newline-and-indent)

(add-to-list 'auto-indent-disabled-modes-list 'sage-shell:sage-mode)
(defun set-newline-and-indent ()
  "Map the return key with `newline-and-indent'"
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'sage-shell:sage-mode-hook 'set-newline-and-indent)
;;------------------------------------------

;;inverse/forward search mode latex
(add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)
(setq TeX-source-correlate-start-server t)
