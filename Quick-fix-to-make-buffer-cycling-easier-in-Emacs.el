;; Quick fix to make buffer cycling easier in Emacs

;; URL: https://youtu.be/Hql1ySbTGbE

;; Skip system buffers when cycling using C-x <left> and C-x <right>
;; https://www.thedigitalcatonline.com/blog/2020/07/18/emacs-configuration-for-python-javascript-terraform-and-blogging/
;; (set-frame-parameter (selected-frame) 'buffer-predicate
;; 		     (lambda (buf) (not (string-match-p "^*" (buffer-name buf)))))

;; Zoom
(set-face-attribute 'default nil :height 140)

(set-frame-parameter (selected-frame) 'buffer-predicate
                     (lambda (buf) 
                       (let ((name (buffer-name buf)))
                         (not (or (string-prefix-p "*" name)
                                  (eq 'dired-mode (buffer-local-value 'major-mode buf)))))))

(global-set-key (kbd "C-`") 'mode-line-other-buffer)
(global-set-key (kbd "C-1") 'kill-this-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
