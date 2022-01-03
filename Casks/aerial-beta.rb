cask "aerial-beta" do
  version "2.3.4beta8"
  sha256 "59140497c9b74dd30176974babdf2a1d750d414336fb18219b8727e6c6fc99ec"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip",
      verified: "github.com/JohnCoates/Aerial/"
  name "Aerial Screensaver"
  desc "Apple TV Aerial screensaver"
  homepage "https://aerialscreensaver.github.io/"

  conflicts_with cask: "aerial"
  depends_on macos: ">= :sierra"

  screen_saver "Aerial.saver"

  zap trash: [
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Application Support/Aerial",
    "~/Library/Screen Savers/Aerial.saver",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/"\
    "ByHost/com.JohnCoates.Aerial*.plist",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Caches/Aerial",
    "/Library/Screen Savers/Aerial.saver",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/Application Support/"\
    "Aerial",
    "~/Library/Preferences/ByHost/com.JohnCoates.Aerial*",
    "~/Library/Application Support/Aerial",
    "~/Library/Caches/Aerial",
  ]
end
