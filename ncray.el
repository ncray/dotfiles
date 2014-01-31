;; automatically follow symlinks
(setq vc-follow-symlinks t)

;; ESS Section
(require 'ess-site)
(setq ess-eval-visibly-p nil) ;otherwise C-c C-r (eval region) takes forever
(setq ess-ask-for-ess-directory nil) ;otherwise you are prompted each time you start an interactive R session

;;auto-complete-mode
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "/Users/ncray/.emacs.d/elpa/auto-complete-20130209.651/dict/")
(global-auto-complete-mode t)
(setq ac-auto-show-menu 0.3)
(setq ac-delay 0.3)
(provide 'auto-complete-settings)

(setq scheme-program-name
      "/usr/local/Cellar/mit-scheme/9.1.1/bin/mit-scheme")
(require 'xscheme)

(setq inferior-lisp-program
      "/usr/local/Cellar/mit-scheme/9.1.1/bin/mit-scheme")

(setq slime-lisp-implementations
      '((mit-scheme ("mit-scheme") :init mit-scheme-init)))

;; (defun mit-scheme-init (file encoding)
;;   (format "%S\n\n"
;; 	  `(begin
;; 	    (load-option 'format)
;; 	    (load-option 'sos)
;; 	    (eval
;; 	     '(construct-normal-package-from-description
;; 	       (make-package-description '(swank) '(())
;; 					 (vector) (vector) (vector) false))
;; 	     (->environment '(package)))
;; 	    (load ,(expand-file-name
;; 		    "../slime-20130312.1749/contrib/swank-mit-scheme.scm" ; <-- insert your path
;; 		    slime-path)
;; 		  (->environment '(swank)))
;; 	    (eval '(start-swank ,file) (->environment '(swank))))))

;; (defun mit-scheme ()
;;   (interactive)
;;   (slime 'mit-scheme))

;; (defun find-mit-scheme-package ()
;;   (save-excursion
;;     (let ((case-fold-search t))
;;       (and (re-search-backward "^[;]+ package: \\((.+)\\).*$" nil t)
;; 	   (match-string-no-properties 1)))))

;; (setq slime-find-buffer-package-function 'find-mit-scheme-package)
;; (add-hook 'scheme-mode-hook (lambda () (slime-mode 1)))

;; load the ensime lisp code...
;; (add-to-list 'load-path "/Users/ncray/ensime_2.9.2-0.9.8.9/elisp/")
;; (require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional
