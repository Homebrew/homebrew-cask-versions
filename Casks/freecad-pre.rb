cask "freecad-pre" do
  version "0.19.2,24291"
  sha256 "53f56601513537b20cec4fde172f96ebfdeddba22495ac55d74f5451544b101c"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.csv.first}/FreeCAD_#{version.major_minor}-#{version.csv.second}-macOS-x86_64-conda.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  name "FreeCAD"
  desc "3D parametric modeler"
  homepage "https://freecadweb.org/"

  livecheck do
    url "https://github.com/FreeCAD/FreeCAD/releases"
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/FreeCAD_(?:\d+(?:\.\d+)*)-(\d+(?:-pre\d+)?)-macOS-x86_64-conda\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "freecad"
  depends_on macos: ">= :sierra"

  app "FreeCAD.app"
end
