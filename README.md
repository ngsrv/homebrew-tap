# ngsrv Homebrew Tap

Official Homebrew tap for the [ngsrv CLI](https://ngsrv.com) — secure tunnels for developers.

## Install

```bash
brew install ngsrv/tap/ngsrv
```

## Update

```bash
brew upgrade ngsrv
```

## Uninstall

```bash
brew uninstall ngsrv
brew untap ngsrv/tap
```

## Verify

```bash
ngsrv version
```

## How releases work

This tap is **auto-updated** by the [ngsrv-cli](https://github.com/ngsrv/ngsrv-cli) release workflow. Every time a new version is tagged in the CLI repo, a fresh `Formula/ngsrv.rb` is generated and committed here with the correct SHA256 checksums for each macOS / Linux platform.

If you want to pin to a specific version, use:

```bash
brew install ngsrv/tap/ngsrv@<version>
```

## Links

- Website: https://ngsrv.com
- Docs: https://ngsrv.com/docs
- CLI source: https://github.com/ngsrv/ngsrv-cli
- Releases: https://github.com/ngsrv/ngsrv-cli/releases
