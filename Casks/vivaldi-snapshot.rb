cask "vivaldi-snapshot" do
  version "5.4.2729.2"
  sha256 "4423a2346cd64570b069ee9bf121c147f3ba4441fb76ce4e4992facf684be83f"

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.universal.dmg"
  name "Vivaldi"
  desc "Web browser focusing on customization and control"
  homepage "https://vivaldi.com/"

  livecheck do
    url "https://update.vivaldi.com/update/1.0/snapshot/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Vivaldi Snapshot.app"

  zap trash: [
    "~/Library/Application Support/Vivaldi Snapshot",
    "~/Library/Caches/com.vivaldi.Vivaldi.snapshot",
    "~/Library/Caches/Vivaldi Snapshot",
    "~/Library/Preferences/com.vivaldi.Vivaldi.snapshot.plist",
    "~/Library/Saved Application State/com.vivaldi.Vivaldi.snapshot.savedState",
  ]
end
