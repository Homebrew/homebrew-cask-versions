cask "openscad-snapshot" do
  version "2019.12.20"
  sha256 "e7847469f4159e4a9d52bd5aa5ec1af4267c801281c6c68ac5dd3b469110098a"

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  appcast "https://www.openscad.org/inc/mac_snapshot_links.js"
  name "OpenSCAD"
  homepage "https://www.openscad.org/downloads.html#snapshots"

  app "OpenSCAD.app"
end
