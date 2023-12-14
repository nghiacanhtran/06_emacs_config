;; Link tham khảo :
;; https://gist.github.com/derofim/c91cfafd318c237d072276bf8055a21f
;; https://github.com/larstvei/dot-emacs
;; https://github.com/daviwil/dotfiles/blob/master/Emacs.org#keep-emacsd-clean
;;https://doc.endlessparentheses.com/variables.html#main_content

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ===GLOBAL & INTERFACE TWEAKS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(tool-bar-mode -1)    ;; hide toolbar
(scroll-bar-mode -1)  ;; hide scrollbar
(menu-bar-mode -1)    ;; hide menubar
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)

(setq make-backup-files nil)
(setq-default inhibit-startup-message t
              use-short-answers t)
(setq inhibit-startup-echo-area-message
      "Lùi một bước biển rộng trời cao")


;; -*- lexical-binding: t; -*-
;; increase performance startup
;; ake startup faster by reducing the frequency of garbage collection and then
;; use a hook to measure Emacs startup time.
;; The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold (* 50 1000 1000))



(setq-default indent-tabs-mode nil) ;; convert tab to space
(global-hl-line-mode t)             ;; highlight current line
(column-number-mode)                ;; view column number in modeline



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ===PACKAGE & PATH CALL
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; === ORG MODE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Improve org mode looks
(setq-default org-startup-indented t
              org-pretty-entities t
              org-use-sub-superscripts "{}"
              org-hide-emphasis-markers t
              org-startup-with-inline-images t
              org-image-actual-width '(300))

(setq org-agenda-files '( "D:/document/document/BIDV/org_ke_hoach"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; === Themes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("bbb13492a15c3258f29c21d251da1e62f1abb8bbd492386a673dcfab474186af" "7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" "043d7daffa6eab75097150fa0c692c2509a2ecb0a07997c7c2ed577f1fded39c" "1781e8bccbd8869472c09b744899ff4174d23e4f7517b8a6c721100288311fa5" "de8f2d8b64627535871495d6fe65b7d0070c4a1eb51550ce258cd240ff9394b0" default))
 '(package-selected-packages
   '(spacemacs-theme org-bullets dashboard doom-themes nano-theme org-modern org-appear olivetti)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; === add-hook
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Profile emacs startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "*** Emacs loaded in %s seconds with %d garbage collections."
                     (emacs-init-time "%.2f")
                     gcs-done)))

(dolist (mode '(text-mode-hook
                prog-mode-hook
                conf-mode-hook))
(add-hook mode (lambda () (display-line-numbers-mode 1))))


