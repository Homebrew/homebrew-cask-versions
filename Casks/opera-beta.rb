cask "opera-beta" do
  version "73.0.3856.156"
  sha256 "b06666c3d6e60959f065a53b92bd7ccd0db1ee6db5efa66111652864edbb7c64"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
