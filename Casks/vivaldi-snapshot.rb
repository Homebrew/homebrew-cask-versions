cask "vivaldi-snapshot" do
  version "4.1.2350.3"
  sha256 "6cf62c51d9dbfd3a6184e0a0eb7607085bbd6ca5ff3310ef68238a02bd48d61e"

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
