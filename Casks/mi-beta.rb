cask "mi-beta" do
  version "3.6b1,1085"
  sha256 "d9f1ab054d66128bf3671f6dfe71670a4fa5c36004c7362d1eea9bb7f7cdb349"

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
