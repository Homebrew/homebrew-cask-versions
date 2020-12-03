cask "opera-beta" do
  version "73.0.3856.235"
  sha256 "3e370608fbc953af2cc366551100016c8373b7b09c688201c2d2212987ad7462"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
