cask "network-menu-bar" do
  version "0.1.1"
  sha256 "a52c36ea1223b109d0e6f0f927df3e5e49dcd0f6aada246367e2a69712d7f454"

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
