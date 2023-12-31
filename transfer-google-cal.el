;; URL: https://youtu.be/-1p9t67hjhk

(require 'icalendar)

(setq diary-file "~/.emacs.d/diary")
(setq calendar-mark-diary-entries-flag t)
(add-to-list 'auto-mode-alist '("\\diary\\'" . diary-mode))
(setq diary-comment-start ";;")
(setq diary-comment-end "")
(setq org-agenda-include-diary t)
(add-hook 'diary-mode-hook 'real-auto-save-mode)
(add-hook 'diary-mode-hook #'abbrev-mode)
