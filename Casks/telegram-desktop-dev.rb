cask "telegram-desktop-dev" do
  version "2.6.1"
  sha256 "181c80eb87b7d31a1d84c9d3cf060ad5e9734c94969604e89aa0ad79fe2ddbc2"

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
