cask "soulver2" do
  version "2.9.0-6104"
  sha256 :no_check

  url "https://soulver.app/download-soulver-2"
  name "Soulver"
  homepage "https://soulver.app/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Soulver 2.app"

  zap trash: [
    "~/Library/Application Support/Soulver",
    "~/Library/Preferences/com.acqualia.soulver.plist",
    "~/Library/Autosave Information/Unsaved Soulver Document*",
  ]
end
