cask "opera-beta" do
  version "76.0.4017.40"
  sha256 "43df9fc6e07b8329f4f3311361b293f406b2c009b3ade6f10b4cd6c5133ee0f8"

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
