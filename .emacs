;; .emacs
;;get rid of UI
;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;(add-to-list 'load-path "~/.emacs.d/ipython/")
;(require 'ipython)

;after installing emacs ipython from yaourt
;(setq ipython-command "/usr/bin/ipython")
;(require 'ipython)

(set-default-font "DejaVu Sans Mono:pixelsize=16:foundry=unknown:weight=normal:slant=normal:width=normal:spacing=100:scalable=true")

;;newest after installing python mode from pacman
(autoload 'python-mode "python-mode.el" "Python mode." t)
(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))

(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(setq default-tab-width 2)

;(require 'w3m-load)

(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;(autoload 'python-mode "python-mode" "Python Mode." t)
;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;(add-to-list 'interpreter-mode-alist '("python" . python-mode))
;(setq py-python-command "/usr/bin/python3")


;; (require 'iswitchb)
;; (setq iswitchb-buffer-ignore '("^ " "*Buffer"))
;; (add-hook
;;  'iswitchb-define-mode-map-hook
;;  '(lambda ()
;;     (define-key iswitchb-mode-map " " 'iswitchb-next-match)
;;     (define-key iswitchb-mode-map [del] 'iswitchb-prev-match)
;;     (define-key iswitchb-mode-map [bs] 'iswitchb-prev-match)
;;     (define-key iswitchb-mode-map [right] 'iswitchb-next-match)
;;     (define-key iswitchb-mode-map [left] 'iswitchb-prev-match)))

;; (icomplete-mode 1)


;; color theme
(require 'color-theme)
(defun color-theme-dark-bliss ()
  ""
  (interactive)
  (color-theme-install
   '(color-theme-dark-bliss
     ((foreground-color . "#eeeeee")
      (background-color . "#001122")
      (background-mode . dark)
      (cursor-color . "#ccffcc"))
     (bold ((t (:bold t))))
     (bold-italic ((t (:italic t :bold t))))
     (default ((t (nil))))

     (font-lock-builtin-face ((t (:foreground "#f0f0aa"))))
     (font-lock-comment-face ((t (:italic t :foreground "#aaccaa"))))
     (font-lock-delimiter-face ((t (:foreground "#aaccaa"))))
     (font-lock-constant-face ((t (:bold t :foreground "#ffaa88"))))
     (font-lock-doc-string-face ((t (:foreground "#eeccaa"))))
     (font-lock-doc-face ((t (:foreground "#eeccaa"))))
     (font-lock-reference-face ((t (:foreground "#aa99cc"))))
     (font-lock-function-name-face ((t (:foreground "#ffbb66"))))
     (font-lock-keyword-face ((t (:foreground "#ccffaa"))))
     (font-lock-preprocessor-face ((t (:foreground "#aaffee"))))
     (font-lock-string-face ((t (:foreground "#bbbbff")))))))

(color-theme-dark-bliss)

;; auctex
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

;; copy-paste
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; ESS lines
(setq load-path (cons "/usr/share/emacs/site-lisp/ess" load-path))
(load "/usr/share/emacs/site-lisp/ess/ess-site")

;; org-mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-font-lock-mode 1)                     ; for all buffers
(setq org-log-done t)

;; agenda
(setq org-agenda-files (list "~/all.org"))



;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" system-name))
