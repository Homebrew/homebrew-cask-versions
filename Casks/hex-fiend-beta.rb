cask "hex-fiend-beta" do
  version "2.14.0b1"
  sha256 "61b264e27089d7b3ac895ad5dc2cf269f66beff38e789aa033f0faf0c0985b0a"

  # github.com/ridiculousfish/HexFiend/ was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.major_minor}.dmg"
  appcast "https://github.com/ridiculousfish/HexFiend/releases.atom"
  name "Hex Fiend"
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
