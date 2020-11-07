cask "opera-beta" do
  version "73.0.3856.31"
  sha256 "6ca78c18a611335fd869b946f6799937a494aa25203423808d86f5d9eeebd2ce"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
