cask "easypresent" do
  version "0.4.8"
  sha256 "e41dcda2bf5ba865bd847a8441080a8280c0125f78a9d43d8da18d0d0d2f3adb"

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
