cask "mi-beta" do
  version "3.7b2,1171"
  sha256 "606a6c67cf8d2c1b50cfa6c337b1ea412741a0b25ca59d75c4949b79006609e7"

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
