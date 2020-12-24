cask "telegram-desktop-dev" do
  version "2.5.1"
  sha256 "0a6e19b9283af4524130e86a3d4fe0464a795bc05c5b6054c14f75761a9641c0"

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
