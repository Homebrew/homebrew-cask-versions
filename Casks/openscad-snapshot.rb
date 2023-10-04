cask "openscad-snapshot" do
  version "2023.10.02"
  sha256 "e07d8fe1160b5e08243bd8436b7ebf625884b88fddc06617cfcd7aa61e4fd8d1"

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  name "OpenSCAD"
  desc "Programmable solid 3D CAD modeller"
  homepage "https://www.openscad.org/downloads.html#snapshots"

  livecheck do
    url "https://files.openscad.org/snapshots/.snapshot_macos.js"
    regex(/OpenSCAD[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "openscad"

  app "OpenSCAD.app"

  zap trash: [
    "~/Library/Caches/org.openscad.OpenSCAD",
    "~/Library/Preferences/org.openscad.OpenSCAD.plist",
    "~/Library/Saved Application State/org.openscad.OpenSCAD.savedState",
  ]
end
