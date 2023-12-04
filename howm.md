# Howm: A forgotten gem for note-taking

# AI was **NOT USED** to make this video or blog. Hooray!

https://github.com/kaorahi/howm#howm-write-fragmentarily-and-read-collectively

https://leahneukirchen.org/blog/archive/2022/03/note-taking-in-emacs-with-howm.html

https://github.com/Emacs101/howm-manual (Russian)

https://kaorahi.github.io/howm/README.html

https://www.emacswiki.org/emacs/HowmMode

https://youtu.be/cCflzhDelvg

<!-- Created on 30 November 2023 @03:46 -->

## Introduction

I want to introduce you to the note taking application called howm. This is a basic introduction. Bear in mind that the Russian Manual of howm is 80 pages long!

Leah Neukirchen has written a good introduction in English:

https://github.com/kaorahi/howm

howm is a note taking program not too well-known in the Western world but which has gained quite a following in Japan. It is a 20-year-old mode that's still maintained by its original author *Kazuyuki Hiraoka*

howm is short for “Hitori Otegaru Wiki Modoki”, which translates to “Single-user Easy Wiki Mode”.

It is a minor mode that works within your preferred major mode (i.e. Markdown or ORG).

Howm notes are kept in a directory hierarchy that you can organize as you wish; by default a date-based system is used and filenames include the current timestamp at creation.

There are two essential kinds of markup that howm cares about: *note titles* and *links*.

Titles are prefaced by `=`
Links by `>>>` or `<<<`

There are two kinds of supported links, namely *goto* and *come-from*

`>>>` howm -- These point TO keywords or to filenames

`<<<` bank bankers -- These are back-links which point "from" keywords. The string 'bank bankers' in all other files will now automatically point to this note.

## Main commands

The prefix key is `C-c ,`

To create a note: `C-c , c`

`C-c , .`		howm-find-today
`C-c , :`		howm-find-yesterday
`C-c , e`		howm-remember
`C-c , i`		howm-insert-keyword
`C-c , l`		howm-list-recent
`C-c , o`		howm-occur
`C-c , r`		howm-refresh
`C-c , t`		howm-list-todo
`C-c , y`		howm-list-schedule

Howm provides *two* main features to access notes: *the menu* and the *summary buffer*:

The hown menu is accessed through `C-c , ,`

The howm summary buffer shows the result of a search (`C-c , g`)

A list of recent notes (`C-c , l`)

An overview of all notes (`C-c , a`).

Typing `RET` will open the note for editing.

Typing `T` will toggle between displaying matching lines or the titles of notes with matches.

In the summary buffer, you can also type `@` to read all matching notes in a concatenated way! Nice.

## Install and Setup

- Install from Melpa

- A sample configuration:

```emacs-lisp
  (require 'howm)
  (setq howm-home-directory "~/howm/") ;; home of our notes
  (setq howm-directory "~/howm/") ;; home of two auxiliary files
  (setq howm-keyword-file (expand-file-name ".howm-keys" howm-home-directory))
  (setq howm-history-file (expand-file-name ".howm-history" howm-home-directory))
  (setq howm-file-name-format "%Y/%m/%Y-%m-%d-%H%M%S.md") ;; Default to Markdown

;; Use ripgrep for searching
  (setq howm-view-use-grep t)
  (setq howm-view-grep-command "rg")
  (setq howm-view-grep-option "-nH --no-heading --color never")
  (setq howm-view-grep-extended-option nil)
  (setq howm-view-grep-fixed-option "-F")
  (setq howm-view-grep-expr-option nil)
  (setq howm-view-grep-file-stdin-option nil)
```

* Additional tweaks to howm by Leah Neukirchen

https://leahneukirchen.org/blog/archive/2022/03/note-taking-in-emacs-with-howm.html

*Do not forget to install `ripgrep`*

# Comparison

- HyRolo (Hyperbole) - Excellent

https://youtu.be/hOuX2q9Re7A

- Denote - Excellent

https://youtu.be/UtSu3ydxKJ4

- Org Mode - Fair to middling (by itself)

https://youtu.be/avNl2yev8A4

- Org Roam - Quite complex but good

https://youtu.be/xcG0oqdqboM

https://youtu.be/mWOpbuW0eKU

**My current preference is for howm.**

©  Raoul Comninos
