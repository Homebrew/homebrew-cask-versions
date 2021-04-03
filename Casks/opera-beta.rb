cask "opera-beta" do
  version "75.0.3969.137"
  sha256 "8a12b0eb6215f3a30e853c62036f2327286a65de0fd025b07c095a0ea0bfbea4"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
