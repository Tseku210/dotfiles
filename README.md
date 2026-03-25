# dotfiles

Dotfiles for configuring macOS or Linux with ZSH and Homebrew.

## Requirements

- macOS or Linux
- ZSH (on macOS, the install script will install ZSH via Homebrew)
- Homebrew (on macOS, the install script will install Homebrew)

## Installation

```bash
git clone https://github.com/Tseku210/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./setup
```

This will install all required dotfiles in your home directory as symlinks. Everything is then configured via modifying files in `~/.dotfiles`.

## Software

The `Brewfile` installs all of the software and applications I have installed on my Mac, including Homebrew formulae, Homebrew casks, and Mac App Store applications.

## Structure

- `setup` - setup script that can be used to install or update the dotfiles on your system
- `Brewfile` - a list of software to install via Homebrew (see `brew bundle` and `brew bundle cleanup`)
- `bin/*` - executable scripts added to your `$PATH`
- `config/*.zsh` - ZSH configuration files, sourced automatically into any new shell
- `functions/*` - ZSH functions and tab-completion definitions
- `symlinks/*` - files ending in `*.symlink` get symlinked into your home directory with the suffix removed (e.g. `gitignore.symlink` becomes `~/.gitignore`)
- `scripts/*` - setup helper scripts (macOS config, symlinks, plugin installation)

## Custom Commands

| Command | Description |
|---------|-------------|
| `+x` | Make a file executable |
| `b` | Git branch switcher (list, switch, or create) |
| `c` | Quick jump to a project in `~/dev/` |
| `dot` | Navigate to the dotfiles directory |
| `e` | Open Cursor editor |
| `extract` | Extract any archive (tar, gz, zip, dmg, etc.) |
| `git-tidy` | Delete local branches merged into HEAD |
| `git-track` | Set current branch to track its remote |
| `git-undo` | Undo the last commit, keeping changes staged |
| `github-email` | Look up a GitHub user's email |
| `get-app-id` | Get a macOS app's bundle ID |
| `ips` | Show remote and local IP addresses |
| `key` | Generate or copy SSH keys |
| `license` | Print an MIT license with the current year |
| `list-app-id` | List all installed macOS app bundle IDs |
| `pr` | GitHub PR helper (list or checkout PRs) |
| `search` | Case-insensitive search with ack |
| `y` | Launch yazi and cd to its exit directory |

## Shell Aliases

| Alias | Description |
|-------|-------------|
| `g` | `git` |
| `gs` | `git status` |
| `gp` | `git push` |
| `gpf` | `git push --force-with-lease` |
| `glog` | Pretty git log |
| `s` | `git sync` |
| `vim` | `nvim` |
| `clr` | Clear terminal |
| `flush` | Flush DNS cache |
| `cleanup` | Remove `.DS_Store` files recursively |
| `loadenv` | Source a `.env` file |

## License

MIT License. See `LICENSE`.

## Inspiration

The following repositories served as inspiration for this repository:

- [holman/dotfiles](https://github.com/holman/dotfiles)
- [ryanb/dotfiles](https://github.com/ryanb/dotfiles)
- [mathiasbynes/dotfiles](https://github.com/mathiasbynens/dotfiles)
