cask "mi-beta" do
  version "3.6b2,1098"
  sha256 "fd9dbbb65e1b41259b46f5a0a0619944c80a812ba1643930e196f7af0c4b733a"

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
