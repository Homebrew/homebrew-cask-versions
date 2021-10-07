cask "vivaldi-snapshot" do
  version "4.3.2439.41"
  sha256 "37bdcd2367adcd7a0e45dba1007252db3b4517cb8230a1ccc3d223353b28458d"

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
