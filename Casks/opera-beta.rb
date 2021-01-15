cask "opera-beta" do
  version "74.0.3911.42"
  sha256 "328da33c3487b6b198e4a43024832cd74f475eae6cbe2342db7560d375ab407d"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
