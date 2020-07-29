cask "vivaldi-snapshot" do
  version "2.12.1873.3"
  sha256 "419609ef091853c553b2843499dd3dbd4137ad2497c26b10606139a5a42997d4"

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast "https://update.vivaldi.com/update/1.0/mac/appcast.xml"
  name "Vivaldi"
  homepage "https://vivaldi.com/"

  auto_updates true

  app "Vivaldi.app"
end
