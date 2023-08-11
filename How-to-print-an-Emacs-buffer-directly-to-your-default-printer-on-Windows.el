;; URL: https://youtu.be/DF-0dzrfVA8
;; How to print an Emacs buffer directly to your default printer on Windows
;; Set printer name to true (t) for default printer
(setq ps-printer-name t)
;; Define the printing command path, here we are using Ghostscript
(setq ps-lpr-command "C:/gs10.01.2/bin/gswin64c.exe")
;; Define the command-line switches used when calling Ghostscript:
;; "-q" to suppress prompts,
;; "-dNOPAUSE" to avoid pausing between pages,
;; "-dBATCH" to run in batch mode,
;; "-sDEVICE=mswinpr2" to use Microsoft Windows printer device,
;; "-sPAPERSIZE=a4" to set the paper size to A4
(setq ps-lpr-switches '("-q" "-dNOPAUSE" "-dBATCH" "-sDEVICE=mswinpr2" "-sPAPERSIZE=a4"))
;; Set the font size for the body text and title, both are 12 points
(setq ps-font-size '(12 . 12))
;; Set the right margin for printing to 50 points (~0.69 inches)
(setq ps-right-margin 50)
;; Set the left margin for printing to 30 points (~0.42 inches)
(setq ps-left-margin 30)
;; Define a global keyboard shortcut "C-c p" to send the buffer to the printer
(global-set-key (kbd "C-c p") 'ps-print-buffer)


