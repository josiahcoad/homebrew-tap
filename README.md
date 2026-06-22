# josiahcoad/homebrew-tap

Homebrew tap for [EasyPresent](https://github.com/josiahcoad/EasyPresent).

```bash
brew tap josiahcoad/tap
brew install --cask --no-quarantine easypresent
```

`--no-quarantine` is needed because the app is ad-hoc signed (not notarized).
If Homebrew refuses with "untrusted tap" (when `HOMEBREW_REQUIRE_TAP_TRUST` is set),
run `brew trust josiahcoad/tap` first.
