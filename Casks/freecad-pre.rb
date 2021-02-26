cask "freecad-pre" do
  version "0.19_pre,24212"
  sha256 "0c62d5bae4e3f57047ccc4069c1809542183274cd64223f99357247fc975493f"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.before_comma}/FreeCAD_#{version.major_minor.delete_suffix("_pre")}-#{version.after_comma}-macOS-x86_64-conda.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  appcast "https://github.com/freecad/freecad/releases.atom"
  name "FreeCAD"
  desc "3D parametric modeler"
  homepage "https://freecadweb.org/"

  conflicts_with cask: "freecad"
  depends_on macos: ">= :sierra"

  app "FreeCAD.app"
end
