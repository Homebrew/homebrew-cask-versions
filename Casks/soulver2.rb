cask "soulver2" do
  version "2.7.1-6074"
  sha256 "24cac29ffd9f28a4a6cc6c90f65c7b7ad9aa76ac3e31aa0b91f271c40d9c1112"

  url "https://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "https://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml"
  name "Soulver"
  homepage "https://www.acqualia.com/soulver/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Soulver.app"

  zap trash: [
    "~/Library/Application Support/Soulver",
    "~/Library/Preferences/com.acqualia.soulver.plist",
    "~/Library/Autosave Information/Unsaved Soulver Document*",
  ]
end
