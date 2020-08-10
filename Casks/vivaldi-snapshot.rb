cask "vivaldi-snapshot" do
  version "3.3.2001.3"
  sha256 "491a1487e5d8513a4743e0ecad14e31541db260c8ed217982a8f9a920a7c558a"

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast "https://update.vivaldi.com/update/1.0/snapshot/mac/appcast.xml"
  name "Vivaldi"
  homepage "https://vivaldi.com/"

  auto_updates true

  app "Vivaldi Snapshot.app"
end
