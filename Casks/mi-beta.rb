cask "mi-beta" do
  version "3.5b4"
  sha256 "0586d48d7796932ac88f30c02eeee896cdc9165caa88247c984126d4847ea3bc"

  url "https://www.mimikaki.net/download/mi#{version}.dmg"	
  appcast "https://www.mimikaki.net/download/appcast_beta.xml"
  name "mi"
  desc "A simple text editor for mac"
  homepage "https://www.mimikaki.net/download/beta.html"

  conflicts_with cask: [
    "mi",
  ]

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
