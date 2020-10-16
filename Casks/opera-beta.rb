cask "opera-beta" do
  version "72.0.3815.133"
  sha256 "cad8515715b69e9aa38acae9c4edfa8a6657ab7da431360e54a19c7bd78204b0"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
