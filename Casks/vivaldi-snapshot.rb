cask "vivaldi-snapshot" do
  version "6.0.2979.9"
  sha256 "121a933b4f13b787264e5525eff70466c5059e07b6f60af127aeeefc434a1460"

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.universal.dmg"
  name "Vivaldi"
  desc "Web browser with built-in email client focusing on customization and control"
  homepage "https://vivaldi.com/"

  livecheck do
    url "https://update.vivaldi.com/update/1.0/snapshot/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Vivaldi Snapshot.app"

  zap trash: [
    "~/Library/Application Support/Vivaldi Snapshot",
    "~/Library/Caches/com.vivaldi.Vivaldi.snapshot",
    "~/Library/Caches/Vivaldi Snapshot",
    "~/Library/Preferences/com.vivaldi.Vivaldi.snapshot.plist",
    "~/Library/Saved Application State/com.vivaldi.Vivaldi.snapshot.savedState",
  ]
end
