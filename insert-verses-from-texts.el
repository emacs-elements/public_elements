;; Insert verses from texts
;; Author: Raoul Comninos
;; Created: 1 October 2023
;; Version: 0
;; Copyright (C) 2023, Raoul Comninos, all rights reserved.

(defun insert-random-verses (n)
  (interactive "nEnter the number of verses: ")
  (let ((text-file "/home/tan/kjv.txt")
  (verses '())
  (lines nil))
    (with-temp-buffer
      (insert-file-contents text-file)
      (goto-char (point-min))
      (while (not (eobp))
  (push (buffer-substring-no-properties (line-beginning-position) (line-end-position)) lines)
  (forward-line 1)))
    (dotimes (_ n)
      (insert (nth (random (length lines)) lines) "\n"))))

;; Insert chapters from the Bible

(defvar last-pattern nil "Store the last pattern entered by the user.")

(defun insert-chapters (text-file pattern)
  (interactive
   (let* ((version (completing-read "Choose the text file (kjv/niv) [kjv]: " '("kjv" "niv") nil t nil nil "kjv"))
	  (file (format "/home/tan/%s.txt" version))
	  (pat (read-string "Enter the pattern: " last-pattern)))
     (setq last-pattern pat)
     (list file pat)))
  (let ((lines nil))
    (with-temp-buffer
      (insert-file-contents text-file)
      (message "File: %s opened, searching for pattern: %s" text-file pattern)
      (goto-char (point-min))
      (while (not (eobp))
	(let ((line (buffer-substring-no-properties (line-beginning-position) (line-end-position))))
	  (when (string-match-p pattern line)
	    (message "Matched Line: %s" line)
	    (push line lines)))
	(forward-line 1)))
    (if lines
	(progn
	  (dolist (line (nreverse lines))
	    (insert line "\n"))
	  (message "Text inserted."))
      (message "No matching lines found."))))

;; Search the KJV

(defun search-kjv (regex)
  (interactive "sEnter the regex pattern to search KJV: ")
  (let ((text-file "/home/tan/kjv.txt")
  (lines nil))
    (with-temp-buffer
      (insert-file-contents text-file)
      (goto-char (point-min))
      (while (not (eobp))
  (let ((line (buffer-substring-no-properties (line-beginning-position) (line-end-position))))
    (when (string-match-p regex line)
      (push line lines)))
  (forward-line 1)))
    (dolist (line (nreverse lines))
      (insert line "\n"))))

;; Search the NIV

(defun search-niv (regex)
  (interactive "sEnter the regex pattern to search NIV: ")
  (let ((text-file "/home/tan/niv.txt")
  (lines nil))
    (with-temp-buffer
      (insert-file-contents text-file)
      (goto-char (point-min))
      (while (not (eobp))
  (let ((line (buffer-substring-no-properties (line-beginning-position) (line-end-position))))
    (when (string-match-p regex line)
      (push line lines)))
  (forward-line 1)))
    (dolist (line (nreverse lines))
      (insert line "\n"))))

;; Insert verses from the Bible

(defvar last-start-pattern nil "Store the last start pattern entered by the user.")

(defun insert-verses ()
  (interactive)
  (let* ((version (completing-read "Choose the text file (kjv/niv) [kjv]: " '("kjv" "niv") nil t nil nil "kjv"))
	 (text-file (format "/home/tan/%s.txt" version))
	 (start-pattern (read-string "Enter the start pattern: " last-start-pattern))
	 (book-chap (when (string-match "\\(.*\\)|\\([0-9]+\\)|\\([0-9]+\\)|" start-pattern)
		      (format "%s|%s|" (match-string 1 start-pattern) (match-string 2 start-pattern))))
	 (max-verse 0)
	 end-pattern
	 (lines nil)
	 (in-range nil))
    (setq last-start-pattern start-pattern)
    (when book-chap
      (with-temp-buffer
	(insert-file-contents text-file)
	(goto-char (point-min))
	(let ((pattern (format "%s\\([0-9]+\\)|" book-chap)))
	  (while (re-search-forward pattern nil t)
	    (setq max-verse (max max-verse (string-to-number (match-string 1))))))))
    (setq end-pattern (if (> max-verse 0)
			  (format "%s%d|" book-chap max-verse)
			start-pattern))
    (setq end-pattern (read-string (format "Enter the end pattern [%s]: " end-pattern) nil nil end-pattern))
    (with-temp-buffer
      (insert-file-contents text-file)
      (goto-char (point-min))
      (while (not (eobp))
	(let ((line (buffer-substring-no-properties (line-beginning-position) (line-end-position))))
	  (when in-range
	    (push line lines))
	  (when (string-match-p start-pattern line)
	    (setq in-range t)
	    (push line lines))
	  (when (and in-range (string-match-p end-pattern line))
	    (setq in-range nil)))
	(forward-line 1)))
    (dolist (line (nreverse lines))
      (insert line "\n"))))

(global-set-key (kbd "C-c i") 'insert-random-verses)
(global-set-key (kbd "C-c c") 'insert-chapters)
(global-set-key (kbd "C-c v") 'insert-verses)
(global-set-key (kbd "C-c s") 'search-kjv)
(global-set-key (kbd "C-c S") 'search-niv)
