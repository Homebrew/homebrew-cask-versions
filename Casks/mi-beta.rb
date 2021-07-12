cask "mi-beta" do
  version "3.5.3,1035"
  sha256 "849603d9dd14d5ad8527b44105dde9e48dc225046da579afcaf21155f86b99b8"

  url "https://www.mimikaki.net/download/mi#{version.before_comma}.dmg"
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
