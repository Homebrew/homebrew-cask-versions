cask "vivaldi-snapshot" do
  version "6.2.3077.3"
  sha256 "eb8e72761f5aeb0dca3a43d9bacb22b061d87455c72a47d6c010b04e61564f3c"

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
