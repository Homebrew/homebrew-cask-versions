cask "vivaldi-snapshot" do
  version "4.2.2392.3"
  sha256 "8d3bd9f2ee7f70f58be305cfd2dc14a4f74eaad9dd1c1bf4830445726321e4ca"

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
