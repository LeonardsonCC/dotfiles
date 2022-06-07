(setq inhibit-startup-message t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)

(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)

(load-theme 'modus-vivendi t)

;; Font
(set-face-attribute 'default nil :font "Fura Code Nerd Font")

;; Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
    
