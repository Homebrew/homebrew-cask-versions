cask "opera-beta" do
  version "72.0.3815.86"
  sha256 "27061b8db89feac6690b40077aad5a3b91da9b79dd6ebf3668c470626f724333"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
