cask "telegram-desktop-dev" do
  version "2.6.6"
  sha256 "d49e2cd83f94c33905492282a1d8190654a5e429b7afc53c8ae23aeaa3a20cd1"

  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.beta.dmg",
      verified: "github.com/telegramdesktop/tdesktop/"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  livecheck do
    url "https://github.com/telegramdesktop/tdesktop/releases"
    strategy :page_match
    regex(/tsetup.(\d+(?:\.\d+)*)\.beta\.dmg/i)
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
