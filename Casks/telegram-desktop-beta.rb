cask "telegram-desktop-beta" do
  version "3.3.1"
  sha256 "73573e35aca58c0318dc18697d864f6117e362772e595a43df3368e6a02f3e4e"

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
