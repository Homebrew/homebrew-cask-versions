cask "openscad-snapshot" do
  version "2022.12.04"
  sha256 "16f4316022a7fb707632dd1f9971435ab936cd00c5e98359773c3f27b56e49e3"

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  name "OpenSCAD"
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
