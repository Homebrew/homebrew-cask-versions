cask "vivaldi-snapshot" do
  version "3.7.2218.3.universal"
  sha256 "69b770257fa6b8d056dd58958c2850d0e632dd95b55b2c2f584e88b5526610c6"

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast "https://update.vivaldi.com/update/1.0/snapshot/mac/appcast.xml"
  name "Vivaldi"
  homepage "https://vivaldi.com/"

  auto_updates true

  app "Vivaldi Snapshot.app"
end
