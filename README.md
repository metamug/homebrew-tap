# Homebrew tap for Plunger

[Plunger](https://github.com/metamug/plunger) is an API client for you and your AI agent: a window, a
command line and an MCP server in one program.

```bash
brew install --cask metamug/tap/plunger
```

That puts `Plunger.app` in `/Applications` and a `plunger` command on your PATH
(`plunger send --url https://example.com`, `plunger mcp`, `plunger install`).

## The first launch

The app is signed ad hoc, not with an Apple Developer ID, so macOS asks you to approve it once:
right-click the app and choose **Open**, or **System Settings > Privacy & Security > Open Anyway**.
Details: [docs/packaging-macos.md](https://github.com/metamug/plunger/blob/main/docs/packaging-macos.md).

## Update and remove

```bash
brew upgrade --cask plunger
brew uninstall --cask plunger          # keep your history and settings
brew uninstall --zap --cask plunger    # remove them too
```

## For maintainers

`Casks/plunger.rb` needs a new `version` and `sha256` for each release (the `.sha256` file next to the
`.dmg` on the release page has the value). The workflow in `.github/workflows/test.yml` installs the cask
on a macOS runner and runs `plunger --version`.
