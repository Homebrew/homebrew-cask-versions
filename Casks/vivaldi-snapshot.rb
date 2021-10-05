cask "vivaldi-snapshot" do
  version "4.3.2439.29"
  sha256 "a483b190c8734e31893293a11ae56d3259c0b61ec8ea24015ffc4685dc73d908"

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
