cask "opera-beta" do
  version "73.0.3856.208"
  sha256 "ba8c8fa569ca0bdae46ed6158db14a074aba8876823d84784b39f2bf3fec4c8b"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
