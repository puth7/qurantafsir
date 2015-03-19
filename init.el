(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

(global-linum-mode 1)

(require 'auto-complete-sage)

(global-auto-complete-mode t)

(require 'auto-complete-auctex)
;;test
					;tes
;coba lt

(define-key global-map (kbd "RET") 'newline-and-indent)
(define-key global-map (kbd "<apps>") 'execute-extended-command)



(show-paren-mode t)               ;; turn paren-mode on
(set-face-foreground 'show-paren-mismatch-face "red") 
(set-face-attribute 'show-paren-mismatch-face nil 
                    :weight 'bold :underline t :overline nil :slant 'normal)

;;;latex normal font
;; Only change sectioning colour
(setq font-latex-fontify-sectioning 'color)
;; super-/sub-script on baseline
(setq font-latex-script-display (quote (nil)))
;; Do not change super-/sub-script font
(custom-set-faces
 '(font-latex-subscript-face ((t nil)))
 '(font-latex-superscript-face ((t nil)))
 )
;; Exclude bold/italic from keywords
(setq font-latex-deactivated-keyword-classes
    '("italic-command" "bold-command" "italic-declaration" "bold-declaration"))
;;  (eval-after-load "tex-mode" '(fset 'tex-font-lock-suscript 'ignore)) ;; disable auto subscript for latex file


;(require 'bibtex)

(setq reftex-plug-into-AUCTex t)
(setq-default TeX-PDF-mode t)
(setq-default TeX-engine 'luatex)
;;(setq latex-run-command "pdflatex")

(cd "E:\\s3\\coding_theory\\modulation_codes-erasure_decoding\\paper")
