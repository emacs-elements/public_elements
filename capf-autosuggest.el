;; capf-autosuggest

;; capf-autosuggest lets you preview the most recent matching history
;; element, similar to zsh-autosuggestions or fish. It works in eshell
;; and in modes derived from comint-mode, a major mode in Emacs used
;; for interacting with interactive command interpreters, for example
;; M-x shell and M-x run-python.

;; To get it to work

;; Install capf-autosuggest
;; Add this to your dot emacs:

(capf-autosuggest-mode 1)
(add-hook 'comint-mode-hook #'capf-autosuggest-mode)
(add-hook 'eshell-mode-hook #'capf-autosuggest-mode)

;; How it works. Open your preferred shell.
;; C-e inserts text from the overlay
;; M-f insert word by word
;; C-n inserts and executes text in one command

;; Other packages that do similar things are fish-completion
