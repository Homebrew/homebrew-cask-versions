cask "openscad-snapshot" do
  version "2022.08.26"
  sha256 "f98f223bd4439030ca1dac9cab62b8a78fb66301edbbfd7e935b975d126c0265"

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  appcast "https://files.openscad.org/snapshots/.snapshot_macos.js"
  name "OpenSCAD"
  homepage "https://www.openscad.org/downloads.html#snapshots"

  app "OpenSCAD.app"
end
