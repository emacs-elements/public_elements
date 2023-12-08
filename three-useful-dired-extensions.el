;; Three useful Dired Extensions

;; The default behaviour sorts by "name" and "date"

(require 'dired-quick-sort)

(dired-quick-sort-setup)

;; -------------------------------------------------------------------block-ends-here
;; Install dired-hacks-utils and dired-narrow

(require 'dired-hacks-utils)

(require 'dired-narrow)

(eval-after-load 'dired
  '(define-key dired-mode-map (kbd "C-x /") 'dired-narrow))

;; -------------------------------------------------------------------block-ends-here 
;; dired-hide-dotfiles

(defun my-dired-mode-hook ()
  "My `dired' mode hook."
  ;; To hide dot-files by default
  (dired-hide-dotfiles-mode))

;; To toggle hiding
(define-key dired-mode-map "." #'dired-hide-dotfiles-mode)

(add-hook 'dired-mode-hook #'my-dired-mode-hook)

;; -------------------------------------------------------------------block-ends-here
