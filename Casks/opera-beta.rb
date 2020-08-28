cask "opera-beta" do
  version "71.0.3770.81"
  sha256 "37758e59229bfa7533fea3d5fe07d2534bc4b97492d1aecfe8fd2dcfbb5b19a1"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
