cask "telegram-desktop-dev" do
  version "2.5.6.beta"
  sha256 "2d9d8f83696613aded668f9a2441682f67eb770d3cb7ad69c4e59acbacfca690"

  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version.major_minor_patch}/tsetup.#{version}.dmg",
      verified: "github.com/telegramdesktop/tdesktop/"
  appcast "https://github.com/telegramdesktop/tdesktop/releases.atom",
          must_contain: version.major_minor_patch
  name "Telegram Desktop"
  homepage "https://desktop.telegram.org/"

  auto_updates true
  conflicts_with cask: "telegram-desktop"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end
