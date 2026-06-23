cask "easypresent" do
  version "0.4.2"
  sha256 "bfdd28b96e7aef93f5f91245958946d19c8d2fcf7bbe985675878b0c787572cb"

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
