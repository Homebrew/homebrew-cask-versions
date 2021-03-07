cask "opera-beta" do
  version "75.0.3969.35"
  sha256 "950f542f143abb615308c68150a5b65446ac60e087245664da9eed9c1e4ead4b"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
