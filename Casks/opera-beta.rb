cask "opera-beta" do
  version "71.0.3770.50"
  sha256 "483a7424cfe12739bb555c9b06c32b3ffef93f9836008b05bffa0dec60875a12"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
