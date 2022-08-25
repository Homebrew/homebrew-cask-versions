cask "mi-beta" do
  version "3.7b1,1156"
  sha256 "62248d20dc686609357a9718b947184be1222e7275b9dc1d0bf17d9ce339e621"

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
