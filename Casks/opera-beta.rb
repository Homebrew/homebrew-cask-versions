cask "opera-beta" do
  version "72.0.3815.49"
  sha256 "740779999dcec630c25182c7e40fd81c66af5952a7682c402f4c46a3da03f900"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
