cask "aerial-beta" do
  version "3.2.7beta2"
  sha256 "d749911f3f493e3542bbb31672f6c2d24cabad06e0cf1e0a1d86524dbd1f4fee"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip",
      verified: "github.com/JohnCoates/Aerial/"
  name "Aerial Screensaver"
  desc "Apple TV Aerial screensaver"
  homepage "https://aerialscreensaver.github.io/"

  livecheck do
    url "https://github.com/JohnCoates/Aerial/releases?q=prerelease%3Atrue&expanded=true"
    regex(/^v?(\d+(?:\.\d+)*beta\d+)$/i)
  end

  conflicts_with cask: "aerial"
  depends_on macos: ">= :sierra"

  screen_saver "Aerial.saver"

  zap trash: [
    "~/Library/Application Support/Aerial",
    "~/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/" \
    "Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver.x86-64/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Application Support/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Caches/Aerial",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/" \
    "ByHost/com.JohnCoates.Aerial*.plist",
    "~/Library/Preferences/ByHost/com.JohnCoates.Aerial*",
    "~/Library/Screen Savers/Aerial.saver",
  ]
end
