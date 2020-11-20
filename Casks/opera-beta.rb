cask "opera-beta" do
  version "73.0.3856.184"
  sha256 "79b1a1c33bc563993bf205736271a0d4c2d9efd284cd1eebd98a6ac3117701f6"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
