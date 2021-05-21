cask "opera-beta" do
  version "77.0.4054.14"
  sha256 "23f9224a3e4d60bfc8f953fa344b7cafbb0246b442fefd133c9ad060a69095be"

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
