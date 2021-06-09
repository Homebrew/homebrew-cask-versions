cask "vivaldi-snapshot" do
  version "4.0.2312.21"
  sha256 "89af249cefa3e8a9d4c89f8b6cf1b531a9a24609066af2326c6969059cddafd2"

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
end
