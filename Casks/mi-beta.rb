cask "mi-beta" do
  version "3.7.3,1213"
  sha256 "386c8ecd8e9788284345ea306440dcc7ba1a6761d424c439c93ccd3f295ee1f9"

  url "https://www.mimikaki.net/download/mi#{version.csv.first}.dmg"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/download/beta.html"

  livecheck do
    url "https://www.mimikaki.net/download/appcast_beta.xml"
    strategy :sparkle
  end

  conflicts_with cask: "mi"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
