cask "opera-beta" do
  version "71.0.3770.126"
  sha256 "ef7171a6c12470538c9f5a7784e55b449268f1a49d8b8a219f23bb2c1cfee846"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
