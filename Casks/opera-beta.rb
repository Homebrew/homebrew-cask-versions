cask "opera-beta" do
  version "76.0.4017.59"
  sha256 "802ff7b9f9d055b029c673265a1166ce578e463d1b534fb7a7911ff235200813"

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
