cask "vivaldi-snapshot" do
  version "4.4.2457.3"
  sha256 "c79fe0fe1625cc97d1c7b7c41f74480cdb00d594cc7e3a60d3a4ef7ac6de6660"

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
