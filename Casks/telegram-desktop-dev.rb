cask "telegram-desktop-dev" do
  version "2.4.13.beta"
  sha256 "7fdbc43addcd6a5d24144429a71683ba034cd4f61dfdb755c78ab5e5d274ab08"

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
