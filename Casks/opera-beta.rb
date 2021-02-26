cask "opera-beta" do
  version "75.0.3969.14"
  sha256 "174d0ca0171599a9b54abbd7b6ee24befbd723e81485daa7f718b719ebae3869"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
