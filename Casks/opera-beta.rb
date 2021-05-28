cask "opera-beta" do
  version "77.0.4054.19"
  sha256 "63af504c03f9de4f2983ff2a231525d722bf189fdebdb7ff29b4fd4fa6cbb56a"

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
