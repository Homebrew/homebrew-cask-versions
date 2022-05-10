cask "vivaldi-snapshot" do
  version "5.3.2669.3"
  sha256 "f117239311a9ebad9bb45ad3d9f60f2c3cd9795eda34689f0f9d85974fb20496"

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
