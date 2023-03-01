(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(package-selected-packages '(skewer-mode))
 '(warning-suppress-log-types '((comp) (comp) (comp)))
 '(warning-suppress-types '((comp) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(define-key key-translation-map (kbd "<apps>") (kbd "<menu>"))
(setq my-alternative-keyboard nil)
(defun my-alternate-keyboard ()
  (interactive)
;  (insert "YES"))
  (setq my-alternative-keyboard (not my-alternative-keyboard))
  (if my-alternative-keyboard
      (progn
	(define-key key-translation-map (kbd "a") (kbd "<left>"))
	(define-key key-translation-map (kbd "s") (kbd "<up>"))
	(define-key key-translation-map (kbd "d") (kbd "<down>"))
	(define-key key-translation-map (kbd "f") (kbd "<right>"))
	)
    (progn
      (define-key key-translation-map (kbd "a") (kbd "a"))
      (define-key key-translation-map (kbd "s") (kbd "s"))
      (define-key key-translation-map (kbd "d") (kbd "d"))
      (define-key key-translation-map (kbd "f") (kbd "f"))
      )
    )
  )

(global-set-key (kbd "<menu>") 'my-alternate-keyboard)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)
(setq js2-strict-missing-semi-warning nil)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
