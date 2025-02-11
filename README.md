# git-history

A collection of simple scripts to traverse git history in large projects.

These commands work on a separate branch to avoid messing up the working tree. This branch should be treated as "read only".

Video:

[![asciicast](https://asciinema.org/a/TuqGPjz4iERu1NPl2ytpeO9e6.svg)](https://asciinema.org/a/TuqGPjz4iERu1NPl2ytpeO9e6)

## Installation

```shell
$ BIN=/path/to/bin bash install.sh
```

## git-history-begin

Creates a "history branch" off the current branch named `@history-<branch name>`. This separates the history traversal from the working tree.

## git-history-up

If one considers the output of `git log` as vertical, `git-history-up` goes "up"
the history towards the newer commits. It does this by doing `git reset --hard`
with the target commit. Notice this is done in the `@history-<branch name>`
branch, it does not reset the working branch.

## git-history-down

Goes "down" the history towards older commits until it reaches the root.

## git-history-cache

Caches the history into a file `.githistory`. Add this file to your global `.gitignore`. This cache improves speed, specially when traversing upwards.

This is called automatically by `git-history-begin`.

If the cache is outdated one can run:

```shell
$ git fetch
$ git history-cache
```

## git-history-root

A helper script, not used by the other scripts but useful in its own.

## LICENSE

The MIT License. See [LICENSE](LICENSE).
