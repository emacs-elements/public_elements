;; URL: https://youtu.be/LqrBAnUVl6c

(defun jump-out-of-pair ()
	(interactive)
	(let ((found (search-forward-regexp "[])}\"'`*=]" nil t)))
		(when found
			(cond ((or (looking-back "\\*\\*" 2)
		 (looking-back "``" 2)
		 (looking-back "''" 2)
		 (looking-back "==" 2))
			 (forward-char))
			(t (forward-char 0))))))

(global-set-key (kbd "M-1") 'jump-out-of-pair)
