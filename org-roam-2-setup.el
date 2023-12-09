; org-roam v. 2 setup
; Raoúl Comninos
; Created on 22 February 2023 @17:38
; URL: https://youtu.be/mWOpbuW0eKU
; URL: https://github.com/org-roam/org-roam

; Installation:
; URL: https://www.youtube.com/watch?v=AyhPmypHDEw

(require 'org-roam)
(setq org-roam-v2-ack t) ;; removes old config settings no longer valid with org-roam v2
(setq org-roam-directory "/home/red/Documents/notes/org-roam/")
(setq org-roam-completion-everywhere t)
(global-set-key (kbd "C-c n l") 'org-roam-buffer-toggle)
(global-set-key (kbd "C-c n f") 'org-roam-node-find)
(global-set-key (kbd "<f8>") 'org-roam-node-find)
(global-set-key (kbd "C-c n i") 'org-roam-node-insert)
(global-set-key (kbd "C-c n c") #'org-id-get-create)
(org-roam-setup) ; initializes org-roam and sets up the necessary 

; Configuration for org-roam 2
; Gone is `(setq org-roam-completion-system 'ivy)'
; Can create nodes out of "headers" not only files (nice). File must be in your org-roam directory.
; `completion-at-point' bound by default to `C-M-i'
; No way of importing files into org-roam without changing the data, contra Denote
