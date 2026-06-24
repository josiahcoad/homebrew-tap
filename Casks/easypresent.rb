cask "easypresent" do
  version "0.4.7"
  sha256 "e059cacdda662e0d7a7dbbc48ce9179e7837bc56c1c39fe3a7551811a66ac48a"

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
