# josiahcoad/homebrew-tap

Homebrew tap for [EasyPresent](https://github.com/josiahcoad/EasyPresent).

```bash
brew tap josiahcoad/tap && brew trust josiahcoad/tap && brew install --cask easypresent
```

The cask strips the download quarantine in a postflight step. The app is ad-hoc signed
(not notarized), so if macOS still warns, approve once via System Settings → Privacy &
Security → Open Anyway.
