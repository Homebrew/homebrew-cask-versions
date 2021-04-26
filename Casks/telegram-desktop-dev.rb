cask "telegram-desktop-dev" do
  version "2.7.2"
  sha256 "a3b810e32a5934a5220fe9c8820176c5ac98f2f66a482edfc9a5fa26c247ffd9"

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
