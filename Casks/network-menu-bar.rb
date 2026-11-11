cask "network-menu-bar" do
  version "0.1.0"
  sha256 "caab8f34dfa622e59334ce75c2c57de6f7708e118425f4b2597c5e6a0fb6375f"

  url "https://github.com/kijart/network-menu-bar/releases/download/#{version}/Network-Menu-Bar-#{version}.dmg"
  name "Network Menu Bar"
  desc "Menu bar app showing Ethernet, Wi-Fi and VPN status with their IP addresses"
  homepage "https://github.com/kijart/network-menu-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Network Menu Bar.app"

  # The app is ad-hoc signed and not notarized, so Gatekeeper would block the quarantined copy.
  preflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/Network Menu Bar.app"]
  end

  uninstall quit: "io.github.kijart.NetworkMenuBar"

  zap trash: "~/Library/Preferences/io.github.kijart.NetworkMenuBar.plist"
end
