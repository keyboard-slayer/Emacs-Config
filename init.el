(let ((gc-cons-percentage .6)
      (gc-cons-threshold most-positive-fixnum)
      (read-process-output-max (* 1024 1024)))


(setq-default inhibit-startup-echo-area-message (user-login-name))


(require 'package)
(setq-default
   load-prefer-newer t
   package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)


(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package t))
(setq-default
   use-package-always-defer t
   use-package-always-ensure t)


(use-package org :ensure org-plus-contrib)


(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))
(garbage-collect))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("8a379e7ac3a57e64de672dd744d4730b3bdb88ae328e8106f95cd81cbd44e0b6" "2035a16494e06636134de6d572ec47c30e26c3447eafeb6d3a9e8aee73732396" default))
 '(elfeed-feeds
   '(("https://www.reddit.com/r/devse.rss" reddit devse)
     ("https://www.reddit.com/r/osdev.rss" reddit prog)))
 '(package-selected-packages
   '(rainbow-delimiters counsel ivy-rich ivy use-package powerline-evil org-plus-contrib evil-org)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
