cask "openra-playtest" do
  version "20230801"
  sha256 "ff1c466d176cf828de042dc7ab461f647d983da6da2326f8602a25ecc845d7ce"

  url "https://github.com/OpenRA/OpenRA/releases/download/playtest-#{version}/OpenRA-playtest-#{version}.dmg",
      verified: "github.com/OpenRA/OpenRA/"
  name "OpenRA (playtest)"
  desc "Real-time strategy game engine for Westwood games"
  homepage "https://www.openra.net/"

  livecheck do
    url :url
    regex(/^playtest[._-]v?(\d+(?:[.-]\d+)*)$/i)
  end

  conflicts_with cask: "openra"

  app "OpenRA - Dune 2000.app"
  app "OpenRA - Red Alert.app"
  app "OpenRA - Tiberian Dawn.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.cnc.savedState",
    "~/Library/Saved Application State/net.openra.mod.d2k.savedState",
    "~/Library/Saved Application State/net.openra.mod.ra.savedState",
  ]
end
