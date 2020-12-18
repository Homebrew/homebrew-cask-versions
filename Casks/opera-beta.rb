cask "opera-beta" do
  version "73.0.3856.283"
  sha256 "e6bcdd7ca3f438085022fb969be11c60c3b232bc3d9db26fde5d667af6596669"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
