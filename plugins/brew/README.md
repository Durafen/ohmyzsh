# brew plugin

The plugin adds several aliases for common [brew](https://brew.sh) commands.

To use it, add `brew` to the plugins array of your zshrc file:

```zsh
plugins=(... brew)
```

## Aliases

| Alias    | Command                               | Description                                                         |
|----------|---------------------------------------|---------------------------------------------------------------------|
| `brewp`  | `brew pin`                            | Pin a specified formula so that it's not upgraded.                  |
| `brewls` | `brew list -1`                       | List installed formulae or the installed files for a given formula. |
| `brewsp` | `brew list --pinned`                  | List pinned formulae, or show the version of a given formula.       |
| `brewbo`   | `brew update && brew outdated`        | Update Homebrew data, then list outdated formulae and casks.        |
| `brewbc`   | `brew upgrade && brew cleanup`        | Upgrade outdated formulae and casks, then run cleanup.              |
| `brewbu`   | `brewbo && brewbc`                        | Do the last two operations above.                                   |
| `brewuf`    | `brew upgrade --formula`              | Upgrade only formulas (not casks).                                  |
| `brewdeps`  | `brew leaves / xargs brew deps --installed --for-each`                              | sed "s/^.\*:/$(tput setaf 4)&$(tput sgr0)/"`| Display the dependency tree of the installed formulae |
|          |                                       |                                                                     |
|`brews`|`brew search $@`| Search for a formula.                                               |
|`brewi`|`brew install  $@`| Install a formula.                                                  |
|`brewri` | `brew reinstall  $@`| Reinstall a formula.                                                |
|`brewf`|`brew info $@`| Get info on formula.                                                |
|`brewu`|`brew uninstall $@`| Uninstall a forumla.                                                |
|`brewup` | `brew update && brew upgrade`         | Update brew and upgrade all formulas.

## Completion

With the release of Homebrew 1.0, they decided to bundle the zsh completion as part of the
brew installation, so we no longer ship it with the brew plugin; now it only has brew
aliases. If you find that brew completion no longer works, make sure you have your Homebrew
installation fully up to date.
