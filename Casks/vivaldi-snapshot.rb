cask "vivaldi-snapshot" do
  version "6.1.3035.12"
  sha256 "c1f3c302573751b14e4e1598d6a7bda20bd74b22c8f65b804d54e67a8b26d995"

  url "https://downloads.vivaldi.com/snapshot-auto/Vivaldi.#{version}.universal.tar.xz"
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

  uninstall quit: "com.vivaldi.Vivaldi.snapshot"

  zap trash: [
    "~/Library/Application Support/Vivaldi Snapshot",
    "~/Library/Caches/com.vivaldi.Vivaldi.snapshot",
    "~/Library/Caches/Vivaldi Snapshot",
    "~/Library/HTTPStorages/com.vivaldi.Vivaldi.snapshot",
    "~/Library/Preferences/com.vivaldi.Vivaldi.snapshot.plist",
    "~/Library/Saved Application State/com.vivaldi.Vivaldi.snapshot.savedState",
  ]
end
