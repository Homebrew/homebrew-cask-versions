cask "vivaldi-snapshot" do
  version "3.2.1967.38"
  sha256 "c2e38bfee9433524524f481a044f6fc5f615b67ba6d7b3da9027be0684b2249f"

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast "https://update.vivaldi.com/update/1.0/mac/appcast.xml"
  name "Vivaldi"
  homepage "https://vivaldi.com/"

  auto_updates true

  app "Vivaldi.app"
end
