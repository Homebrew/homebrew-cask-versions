cask "openscad-snapshot" do
  version "2020.09.01"
  sha256 "1481aee7bc20878da7d0667a009a6a2a0be398be6af93f2cd42df5262a95f55a"

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  appcast "https://files.openscad.org/snapshots/.snapshot_macos.js"
  name "OpenSCAD"
  homepage "https://www.openscad.org/downloads.html#snapshots"

  app "OpenSCAD.app"
end
