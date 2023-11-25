;; Link tham khảo :
;; https://gist.github.com/derofim/c91cfafd318c237d072276bf8055a21f
;; https://github.com/larstvei/dot-emacs
;; https://github.com/daviwil/dotfiles/blob/master/Emacs.org#keep-emacsd-clean

(use-package package
    :config
 (add-to-list 'package-archives
                 '("melpa" . "https://melpa.org/packages/"))
  (package-initialize))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(tool-bar-mode -1)    ;; hide toolbar
(scroll-bar-mode -1)  ;; hide scrollbar
(menu-bar-mode -1)    ;; hide menubar
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)

(setq make-backup-files nil)



;; -*- lexical-binding: t; -*-
;; increase performance startup
;; ake startup faster by reducing the frequency of garbage collection and then
;; use a hook to measure Emacs startup time.
;; The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold (* 50 1000 1000))



(setq-default indent-tabs-mode nil) ;; convert tab to space
(global-hl-line-mode t)             ;; highlight current line
(column-number-mode)                ;; view column number in modeline

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; HOOK
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Profile emacs startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "*** Emacs loaded in %s seconds with %d garbage collections."
                     (emacs-init-time "%.2f")
                     gcs-done)))

(add-hook 'prog-mode-hook 'display-line-numbers-mode) ;; enable line number

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(nano-dark))
 '(custom-safe-themes
   '("de8f2d8b64627535871495d6fe65b7d0070c4a1eb51550ce258cd240ff9394b0" "1781e8bccbd8869472c09b744899ff4174d23e4f7517b8a6c721100288311fa5" "e7820b899036ae7e966dcaaec29fd6b87aef253748b7de09e74fdc54407a7a02" default))
 '(org-agenda-files '("e:/document/org/test.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ORG
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Modern looks for Org
(use-package org-modern
  :after org
  :hook (org-mode . org-modern-mode)
  :config
  (setq org-modern-block-fringe nil))
