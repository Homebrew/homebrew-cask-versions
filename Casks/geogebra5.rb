cask "geogebra5" do
  version "5.0.764.0"
  sha256 "be889f3a7fdddc3a81ac96116449ec30de324a143423b2a3d3d2b79a8e2f7e24"

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-MacOS-Installer-withJava-#{version.dots_to_hyphens}.zip"
  name "GeoGebra"
  desc "Solve, save and share math problems, graph functions, etc"
  homepage "https://www.geogebra.org/"

  livecheck do
    url "https://download.geogebra.org/package/mac"
    regex(%r{/GeoGebra-MacOS-Installer-withJava-(\d+(?:-\d+)*)\.zip}i)
    strategy :header_match do |headers, regex|
      headers["location"][regex, 1].tr("-", ".")
    end
  end

  app "Geogebra.app"

  uninstall quit:       "org.geogebra#{version.major}.mac",
            login_item: "Geogebra"
end
