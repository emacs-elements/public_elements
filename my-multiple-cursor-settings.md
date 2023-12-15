# My `multiple-cursor` settings

<!-- Created on 6 December 2023 @19:04 -->

URL: https://github.com/magnars/multiple-cursors.el

https://www.youtube.com/watch?v=3O-bDYqhFos

As some of you may know, I have done a video on whether multiple cursors are necessary. Be sure to check it out.

In that video I argue that most of the functionality in the package multiple-cursors is already provided in Emacs by default.

However, if you would like to use multiple cursors nonetheless, then feel free to install the package. The problem however is that it has 49 commands! And it is not easy to distinguish the one from the other.

I have tested each of them and reduced them to the essential ones which I am presenting to you here.

I have modeled my choices on *Sublime Text* which mastered the concept of multiple cursors.

My setup follows below.

The first two keys unset the bindings for `Control-d` and `Control-k` respectively. By default in Emacs, these keys are used for deleting characters under the cursor and killing the line.

I use these instead:

`(global-set-key (kbd "S-<delete>") 'kill-whole-line)` 

And the `Delete` key.

My setup follows

```emacs-lisp
  (global-unset-key (kbd "C-d"))
  (global-unset-key (kbd "C-k"))

  (use-package multiple-cursors
	:bind (("C-S-c C-S-c" . mc/edit-lines)
	   ;; This works on regions. Puts a cursor at the beginning of each line.
	   ("C-d" . mc/mark-next-like-this) ;; Select a word and then invoke this command to select the next word exactly like it.
	   ("C-k" . mc/skip-to-next-like-this) ;; This skips the next like word.
	   ("M-<f2>" . mc/mark-next-like-this-word) ;;  Automatically selects words under the cursor.
	   ("M-<f3>" . mc/mark-all-like-this) ;; Selects all the instances of a word you have already specified.
	   ("M-<f4>" . mc/mark-all-like-this-dwim))) ;; Guesses what you want to select:  words, phrases, etc.
  ;; Then there is one mouse command using Meta and the left mouse button
  (global-unset-key (kbd "M-<down-mouse-1>"))
  (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)
```

**These commands should match most situations.**

For more complex solutions see John Wiegley's dot emacs and that of Sacha Chua

https://github.com/jwiegley/dot-emacs/blob/master/init.org

https://sachachua.com/dotemacs/index.html

