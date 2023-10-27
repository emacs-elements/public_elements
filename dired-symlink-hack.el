;; Show real location of symlinks in Dired

(defun my-dired-find-file ()
  "Open file or directory and show its canonical path."
  (interactive)
  (let ((original (dired-get-file-for-visit)))
    (if (file-directory-p original)
        (find-alternate-file (file-truename original))
      (find-file original))))

(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'my-dired-find-file))
