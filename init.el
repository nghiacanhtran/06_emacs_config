;; Link tham khảo :
;; https://gist.github.com/derofim/c91cfafd318c237d072276bf8055a21f
;; https://github.com/larstvei/dot-emacs

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10.*\\)")
     ("http" . "10.53.120.10:8080")
     ("https" . "10.53.120.10:8080")))

(setq url-http-proxy-basic-auth-storage
    (list (list "10.53.120.10:8080"
                (cons "Input your LDAP UID !"
                      (base64-encode-string "nghiatc1:Tocngan$7")))))


(use-package package
    :config
 (add-to-list 'package-archives
                 '("melpa" . "https://melpa.org/packages/"))
  (package-initialize))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ===GLOBAL & INTERFACE TWEAKS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Keyboard-centric user interface
(setq-default inhibit-startup-message t
              use-short-answers t)
(setq initial-scratch-message ";; Hello World")


(tool-bar-mode -1)    ;; hide toolbar
(scroll-bar-mode -1)  ;; hide scrollbar
(menu-bar-mode -1)    ;; hide menubar
(set-frame-size (selected-frame) 100 60) ;; in px
(global-visual-line-mode t)  ;; wrap text to words at the end of the window (def chars)
(global-hl-line-mode t)      ;; highlight current line
(global-font-lock-mode t)    ;; syntax highlight wherever
(show-paren-mode 1)          ;; highlight matching parentheses
(setq-default indent-tabs-mode nil) ;; convert tabs to spaces
;;(setq-default line-spacing 3) ;; increase line height
(delete-selection-mode 1)      ;; when writing over selection, to replace
(set-language-environment "UTF-8") ;; set default coding to utf8
(prefer-coding-system 'utf-8)
(global-display-line-numbers-mode 1)  ;; Display line numbers
(setq make-backup-files nil);; turn off backup file

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ===PACKAGE & PATH CALL
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; A startup screen extracted from Spacemacs
(use-package dashboard
  :config
  (setq dashboard-projects-backend 'project-el
        dashboard-banner-logo-title nil
        dashboard-center-content t
        dashboard-set-footer nil
        dashboard-page-separator "\n\n\n"
        dashboard-items '((projects . 15)
                          (recents  . 15)
                          (bookmarks . 5)))
  (dashboard-setup-startup-hook))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; === ORG MODE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; === Themes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(adwaita))
 '(custom-safe-themes
   '("043d7daffa6eab75097150fa0c692c2509a2ecb0a07997c7c2ed577f1fded39c" "1781e8bccbd8869472c09b744899ff4174d23e4f7517b8a6c721100288311fa5" "de8f2d8b64627535871495d6fe65b7d0070c4a1eb51550ce258cd240ff9394b0" default))
 '(package-selected-packages
   '(dashboard doom-themes nano-theme org-modern org-appear olivetti)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; === add-hook
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
