cask "telegram-desktop-dev" do
  version "2.7.4"
  sha256 "3821b17d20ac49efe6ad3d669834a6575958f3b0bc86a1eea3341974d7aa19a3"

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
