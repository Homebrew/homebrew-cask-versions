cask "hex-fiend-beta" do
  version "2.14.1b"
  sha256 "1bd685a09811bcebf785864e657c36770ba19a8505d4c3bc2eba12314981f510"

  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.delete("b")}.dmg",
      verified: "github.com/ridiculousfish/HexFiend/"
  appcast "https://github.com/ridiculousfish/HexFiend/releases.atom"
  name "Hex Fiend"
  desc "Hex editor focussing on speed"
  homepage "https://ridiculousfish.com/hexfiend/"

  conflicts_with cask: "hex-fiend"

  app "Hex Fiend.app"
  binary "#{appdir}/Hex Fiend.app/Contents/Resources/hexf"

  zap trash: [
    "~/Library/Caches/com.ridiculousfish.HexFiend",
    "~/Library/Preferences/com.ridiculousfish.HexFiend.plist",
    "~/Library/Saved Application State/com.ridiculousfish.HexFiend.savedState",
  ]
end
