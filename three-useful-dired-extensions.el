S;; Three useful Dired Extensions

;; The default behaviour sorts by "name" and "date"

(require 'dired-quick-sort)

(dired-quick-sort-setup)




1. default: This option uses the default file sorting method of the underlying system. On Unix-like systems, this typically corresponds to mtime, sorting by modification time.

2. atime: This option sorts by access time, which is the last time the file was read or its metadata was accessed. This can be useful if you're interested in identifying files that haven't been accessed in a while.

3. access: Similar to atime, this option also sorts by access time. However, it uses a more precise timestamp that includes both date and time information.

4. use: This option sorts by use time, which is the last time the file was modified or accessed in a way that changed its data content. This can be useful for identifying recently edited files.

5. ctime: This option sorts by creation time, which is the time the file was created. This can be helpful for finding chronologically older files.

6. Status: This option doesn't directly sort by time, but instead groups files based on their modification status. It categorizes files as "modified," "unchanged," "missing," and "deleted." This provides a quick overview of the changes made within the directory.






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
