cask "opera-beta" do
  version "74.0.3911.63"
  sha256 "497e2be23eec779aba5d6f905924a42f0f988629289a4e5a3a0fb3062ecbea7c"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
