cask "telegram-desktop-beta" do
  version "4.4.3"
  sha256 "07a5ddeb5846cd24f97d4459e668148875d380cca5986f049f7a483b43ee7d98"

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.beta.dmg",
      verified: "updates.tdesktop.com/tmac"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  livecheck do
    url "https://telegram.org/dl/desktop/mac?beta=1"
    strategy :header_match
    regex(/tsetup.(\d+(?:\.\d+)+)\.beta.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "telegram-desktop"
  depends_on macos: ">= :sierra"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end
