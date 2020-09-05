cask "openscad-snapshot" do
  version "2020.09.03"
  sha256 "074d011f0db0e0779e6a7e8a8ad367d69623c4ae3c268c15c6e1cba6527a3d1e"

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  appcast "https://files.openscad.org/snapshots/.snapshot_macos.js"
  name "OpenSCAD"
  homepage "https://www.openscad.org/downloads.html#snapshots"

  app "OpenSCAD.app"
end
