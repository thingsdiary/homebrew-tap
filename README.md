# ThingsDiary Homebrew Tap

Homebrew cask for [ThingsDiary for macOS](https://github.com/thingsdiary/thingsdiary-mac).
The current release supports Apple Silicon Macs.

## Install

```sh
brew tap thingsdiary/tap
brew install --cask thingsdiary/tap/thingsdiary
```

The app does not have an Apple Developer ID signature yet. If macOS blocks the
first launch, open System Settings > Privacy & Security and click **Open Anyway**.

## Update

```sh
brew update
brew reinstall --cask thingsdiary
```

## Uninstall

```sh
brew uninstall --cask thingsdiary
brew untap thingsdiary/tap
```
