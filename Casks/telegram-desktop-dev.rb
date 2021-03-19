cask "telegram-desktop-dev" do
  version "2.7.0"
  sha256 "74e3bbe380c252ba59ccf7d0adce83f996629bd1d4969e748883c58207041ceb"

  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.dmg",
      verified: "github.com/telegramdesktop/tdesktop/"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  livecheck do
    url "https://github.com/telegramdesktop/tdesktop/releases"
    strategy :page_match
    regex(/tsetup.(\d+(?:\.\d+)*)\.dmg/i)
  end

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
