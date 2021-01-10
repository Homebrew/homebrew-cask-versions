cask "opera-beta" do
  version "74.0.3911.22"
  sha256 "1745712823353efe43197531bf5fda32367e6f4adfe0cc84f77f75f6abf72458"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
