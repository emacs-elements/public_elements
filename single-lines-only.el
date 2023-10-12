;; Replace multiple blank lines with a single blank line

(defun single-lines-only ()
	"replace multiple blank lines with a single blank line"
	(interactive)
	(goto-char (point-min))
	(while (re-search-forward "\\(^\\s-*$\\)\n" nil t)
		(replace-match "\n")
		(forward-char 1)))

(defalias 'slo 'single-lines-only)

