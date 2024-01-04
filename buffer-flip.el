(use-package buffer-flip
  :ensure t
  :bind  (("C-<tab>" . buffer-flip)
          :map buffer-flip-map
          ( "C-<tab>" .   buffer-flip-forward) 
          ( "C-`" . buffer-flip-backward) 
          ( "M-ESC" .     buffer-flip-abort))
  :config
  (setq buffer-flip-skip-patterns
        '("^\\*helm\\b"
          "^\\*swiper\\*$"
          "^\\*Messages\\*$"
          "^\\*Warnings\\*$"
          "^\\*Compile-Log\\*$"
          "^\\*rg\\*$"
          "^\\*Async-native-compile-log\\*$"
          "/\\'"
	  )))
