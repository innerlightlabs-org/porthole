# Porthole

A native macOS menu bar app that surfaces [Syncthing](https://syncthing.net) status — the Mac equivalent of [SyncTrayzor](https://github.com/canton7/SyncTrayzor) on Windows.

Shows folder sync state at a glance, recent transfers, live throughput, and system notifications on state transitions.

## Download

Latest release: **[Releases →](https://github.com/innerlightlabs-org/porthole/releases)**

## Install

```sh
brew tap innerlightlabs-org/porthole https://github.com/innerlightlabs-org/porthole
brew install --cask porthole
```

For the latest pre-release builds:

```sh
brew install --cask porthole@beta
```

The cask installs `Porthole.app` into `/Applications`. Future updates land via `brew upgrade --cask porthole`.

Or, if you prefer to install by hand: download `Porthole-x.y.z.zip` from the latest release, unzip, and drag `Porthole.app` into `/Applications`. The app is signed with a Developer ID and notarized by Apple — Gatekeeper accepts it without right-click-Open gymnastics.

## Requirements

- macOS 26 (Tahoe) or later
- A running Syncthing daemon — easiest install:

  ```sh
  brew install syncthing
  brew services start syncthing
  ```

## Issues and feature requests

[File an issue →](https://github.com/innerlightlabs-org/porthole/issues) — please include:

- macOS version
- Porthole version (menu bar → footer → About)
- A short description and reproduction steps

## Privacy

Porthole is connect-only. It talks to your local Syncthing daemon's REST API over `127.0.0.1` using the API key from your Syncthing config. Nothing leaves your machine. The app does not phone home, does not collect telemetry, and has no analytics.

## License

Porthole is closed-source software. Source code is not published here — only releases, issues, and this README.

---

*Source repository for engineering work is private. This repo serves binaries and bug reports.*
