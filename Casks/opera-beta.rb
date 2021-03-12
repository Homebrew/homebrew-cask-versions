cask "opera-beta" do
  version "75.0.3969.50"
  sha256 "458cd53dc1fb8cbc1dbc033671870807b6912b343a64d40899e1cf3d319a7a8c"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
