cask "easypresent" do
  version "0.4.6"
  sha256 "0e3f83ce0476432da63821efa53e281efc876e9a485dd1b23e7245627d6d5a9f"

  url "https://github.com/josiahcoad/EasyPresent/releases/download/v#{version}/EasyPresent-v#{version}.dmg"
  name "EasyPresent"
  desc "Presenter overlay — halo cursor, laser pointer, quick boxes and arrows"
  homepage "https://github.com/josiahcoad/EasyPresent"

  app "EasyPresent.app"

  # Ad-hoc signed (not notarized): strip the quarantine flag so the app opens
  # without the Gatekeeper "unverified developer" prompt.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/EasyPresent.app"],
                   must_succeed: false
  end

  zap trash: "~/Library/Preferences/com.josiahcoad.EasyPresent.plist"
end
