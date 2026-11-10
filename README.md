# Homebrew tap

Casks for my Mac apps.

```bash
brew tap m-nabeegh/tap
brew install --cask filemorrow
brew install --cask nabbar
```

| Cask | App |
| --- | --- |
| `filemorrow` | [FileMorrow](https://github.com/M-Nabeegh/FileMorrow), a private, local-first Downloads organizer |
| `nabbar` | [NabBar](https://github.com/M-Nabeegh/NabBar), Codex, Claude and Command Code limits in the menu bar |

The apps are signed ad hoc and not notarized, so macOS asks once before the
first launch: open **System Settings › Privacy & Security** and click
**Open Anyway**. Each cask pins the SHA-256 of the release it installs.
