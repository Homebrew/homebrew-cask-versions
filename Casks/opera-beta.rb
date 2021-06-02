cask "opera-beta" do
  version "77.0.4054.38"
  sha256 "d36ffb13aad41fa8f230d292011c67db50be03c23028c0ac686eff2699ab68da"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/computer/beta"

  livecheck do
    url "https://get.geo.opera.com/pub/opera-beta/"
    strategy :page_match
    regex(/href="(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  app "Opera Beta.app"
end
