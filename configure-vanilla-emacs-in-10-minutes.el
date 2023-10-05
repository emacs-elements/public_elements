;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs Elements
;; URL: https://youtu.be/eRHLGWajcTk
;; Last updated 19 February 2023

;; Zoom
(set-face-attribute 'default nil :height 128)

;; Save History
(savehist-mode +1)
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring))

;; Startup
(setq inhibit-startup-screen t)
(setq initial-scratch-message
      ";; Hello world.\n")

;; Size of the starting Window
(setq initial-frame-alist '((top . 1)
			    (left . 450)
			    (width . 101)
			    (height . 70)))

;; Use `use-package'
;; This code is not required in Emacs 29 which bundles `use-package'
(eval-when-compile (add-to-list 'load-path "/home/red/.emacs.d/use-package")
		   (require 'use-package))

;; Package directory
(add-to-list 'load-path "/home/red/.emacs.d/Packages")

;; Basic modes
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(column-number-mode +1)
(global-visual-line-mode +1)
(delete-selection-mode +1)
(save-place-mode +1)

;; Recent files
(recentf-mode 1)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(setq package-check-signature nil)

;; UTF-8
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)

;; Backups
;; URL: https://sachachua.com/dotemacs/index.html
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

;; Quickly access dot emacs
(global-set-key (kbd "C-c d")
		(lambda()
		  (interactive)
		  (find-file "~/.emacs")))

;; Quickly access dot emacs d
(global-set-key (kbd "C-c e")
    (lambda()
      (interactive)
      (find-file "~/.emacs.d")))

;; Global keys
;; If you use a window manager be careful of possible key binding clashes
(setq recenter-positions '(top middle bottom))
(global-set-key (kbd "C-1") 'kill-this-buffer)
(global-set-key (kbd "C-<down>") (kbd "C-u 1 C-v"))
(global-set-key (kbd "C-<up>") (kbd "C-u 1 M-v"))
(global-set-key [C-tab] 'other-window)
(global-set-key (kbd "C-c c") 'calendar)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-/") #'hippie-expand)
(global-set-key (kbd "C-x C-j") 'dired-jump)
(global-set-key (kbd "C-c r") 'remember)

;; dired
(setq dired-listing-switches "-alt --dired --group-directories-first -h -G")

(add-hook 'dired-mode-hook 'dired-hide-details-mode)

(add-hook 'dired-mode-hook (lambda () (dired-omit-mode)))
(setq dired-omit-files
      "\\`[.]?#\\|\\.java\\|snap\\|System\\|\\.ssh\\|\\.gitconfig\\|\\.wget\\|\\.aspell\\|\\.cache\\|\\.lesshst\\|\\.gftp\\|\\.pki\\|\\.gnome\\|VirtualBox\\|master\\.tar\\.gz\\|\\.wine\\|plan9port\\|\\.idm\\|\\.font\\|\\.iso\\|\\.cargo\\|lib\\|amd64\\|\\.gnupg\\|\\.python\\|\\.var\\|\\.local\\|\\`[.][.]?\\'")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   '("~/Documents/notes/org/records.org" "/home/red/Documents/notes/org/agenda.org")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "red3"))))
 '(region ((t (:extend t :background "#CCCCCC")))))

(setq case-fold-search t)

(setq sentence-end-double-space nil)

;; Browse URLS in text mode
(global-goto-address-mode +1) ;; Requires Emacs 28

;; FINIS
