# CHATGPT-SHELL

# How I came across this package

https://www.reddit.com/r/emacs/comments/185n3yo/emacs_meets_chatgpt_for_flawless_grammar_and/

# What it does

Allows you to run chatgpt inside Emacs

https://github.com/xenodium/chatgpt-shell/tree/main

# Create API

You will first need to get a key from OpenAI

https://platform.openai.com/account/api-keys

machine api.openai.com password [API]

# Most interesting commands

```
chatgpt-shell
chatgpt-shell-describe-code
chatgpt-shell-explain-code
chatgpt-shell-describe-image
chatgpt-shell-generate-unit-test ;; test code units
chatgpt-shell-proofread-region ;; (C-c s)
chatgpt-shell-send-and-review-region ;; ask questions about a region
```

# Setup

```
 '(chatgpt-shell-model-versions
   '("gpt-3.5-turbo-16k-0613" "gpt-3.5-turbo-16k" "gpt-3.5-turbo-0613" "gpt-3.5-turbo"))
```

```
(require 'chatgpt-shell)
;; If using auth-sources, e.g., so the file ~/.authinfo has this line:
;;  machine api.openai.com password OPENAI_KEY
(setq chatgpt-shell-openai-key
      (auth-source-pick-first-password :host "api.openai.com"))
```

# Example

```
"We are peparing ourselves for the days
when the nations shall beat their swords into plowshares,
and their spears into puning hooks;
nation shall not lift up sword against nation,
neither shall they learn war any more.."
```

# Who said this

```
Thou sodden-witted lord! thou hast no more brain than I have in mine elbows
```
