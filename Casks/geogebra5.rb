cask "geogebra5" do
  version "5.0.691.0"
  sha256 "5bfeea2266fd409eb867ed6572b8e2341bc7dcb2719ff9ee49acbb6b733f71d3"

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-MacOS-Installer-withJava-#{version.dots_to_hyphens}.zip"
  name "GeoGebra"
  desc "Solve, save and share math problems, graph functions, etc"
  homepage "https://www.geogebra.org/"

  livecheck do
    url "https://download.geogebra.org/package/mac"
    strategy :header_match do |headers|
      v = headers["location"][%r{/GeoGebra-MacOS-Installer-withJava-(\d+(?:-\d+)*)\.zip}i, 1]
      v.tr("-", ".")
    end
  end

  app "Geogebra.app"

  uninstall quit:       "org.geogebra#{version.major}.mac",
            login_item: "Geogebra"
end
