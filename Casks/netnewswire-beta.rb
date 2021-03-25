cask "netnewswire-beta" do
  version "6.0beta4"
  sha256 "d796d90e87df8388495a39455dd7ff4a5f3ac81599455586b0677b88beb729cf"

  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version.sub("beta", "b")}.zip",
      verified: "github.com/brentsimmons/NetNewsWire/"
  appcast "https://github.com/brentsimmons/NetNewsWire/releases.atom"
  name "NetNewsWire"
  desc "Free and open-source RSS reader"
  homepage "https://ranchero.com/netnewswire/"

  auto_updates true
  conflicts_with cask: "netnewswire"
  depends_on macos: ">= :catalina"

  app "NetNewsWire.app"

  zap trash: [
    "~/Library/Application Scripts/com.ranchero.NetNewsWire-Evergreen.Subscribe-to-Feed",
    "~/Library/Application Support/NetNewsWire",
    "~/Library/Caches/com.ranchero.NetNewsWire-Evergreen",
    "~/Library/Containers/com.ranchero.NetNewsWire-Evergreen.Subscribe-to-Feed",
    "~/Library/Preferences/com.ranchero.NetNewsWire-Evergreen.plist",
    "~/Library/Saved Application State/com.ranchero.NetNewsWire-Evergreen.savedState",
    "~/Library/WebKit/com.ranchero.NetNewsWire-Evergreen",
  ]
end
