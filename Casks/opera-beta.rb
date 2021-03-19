cask "opera-beta" do
  version "75.0.3969.60"
  sha256 "9e8f42621eee32fc5a41a8cc3ad37a6325bfb99d752d406440fd5d4e93c1ff28"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
