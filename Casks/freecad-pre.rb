cask "freecad-pre" do
  version "0.19_pre,22894"
  sha256 "bf2195381b58272dac246c7dbbe89fdec7d378f853ed79bc41b3aae4f757fa04"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.before_comma}/FreeCAD_#{version.major_minor.delete_suffix("_pre")}-#{version.after_comma}-macOS-x86_64-conda.dmg"
  appcast "https://github.com/freecad/freecad/releases.atom"
  name "FreeCAD 0.19_pre"
  desc "3D parametric modeler"
  homepage "https://freecadweb.org/"

  depends_on macos: ">= :sierra"

  # Renamed to avoid conflict with other FreeCAD.app
  app "FreeCAD.app", target: "FreeCAD_pre.app"
end
