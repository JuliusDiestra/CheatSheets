# SOME BASH COMMANDS

## Search word in different files
```
grep -Rl <path-to-directory> -e 'some-pattern'
```

For example, I want to search ".cpp" in the current directory

```
grep -Rl . -e '.cpp'
```

In case I want to the search ignore case sensitive, you can add "-i" flag,
```
grep -Rli . -e 'function'
```

