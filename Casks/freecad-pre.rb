cask "freecad-pre" do
  version "0.19_pre,23578"
  sha256 "83748a7955cb3a36863e12e155f162deefbe6ab4a5e32fd3b717f8eaaf0273bf"

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
