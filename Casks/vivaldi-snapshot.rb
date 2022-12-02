cask "vivaldi-snapshot" do
  version "5.6.2867.22"
  sha256 "10b38cfaabc209c6af5836d9a3c3bd3a3a0059d080aafbcb5981905c51067fb2"

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
