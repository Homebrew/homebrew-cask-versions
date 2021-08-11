cask "freecad-pre" do
  version "0.19.2,24291"
  sha256 "53f56601513537b20cec4fde172f96ebfdeddba22495ac55d74f5451544b101c"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.before_comma}/FreeCAD_#{version.major_minor}-#{version.after_comma}-macOS-x86_64-conda.dmg"
      verified: "github.com/FreeCAD/FreeCAD/"
  name "FreeCAD"
  desc "3D parametric modeler"
  homepage "https://freecadweb.org/"

  livecheck do
    url "https://github.com/FreeCAD/FreeCAD/releases"
    strategy :page_match do |page|
      match = page.match(
        %r{href=.*?/(\d+(?:\.\d+)*)/FreeCAD_(?:\d+(?:\.\d+)*)-(\d+(?:-pre\d+)?)-macOS-x86_64-conda\.dmg}i,
      )
      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "freecad"
  depends_on macos: ">= :sierra"

  app "FreeCAD.app"
end
