# Regular expressions search in Notepad++
```
Notepad++ regular expressions (“regex”) use the Boost regular expression library v1.80 (as of NPP v8.4.7), which is based on PCRE (Perl Compatible Regular Expression) syntax, only departing from it in very minor ways.
```

# Examples

## Delete spaces at beginning of the line

```
^[ \t]
```

## Delete spaces at the end of a line

```
 +$
```

## Delete blank lines

```
^\r\n
```

