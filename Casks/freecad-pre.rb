cask "freecad-pre" do
  version "0.19_pre,23756"
  sha256 "a2dafe2e313746afb6f75ecfc738d6c5d2603e3ef27db6050c7d401873fac629"

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
