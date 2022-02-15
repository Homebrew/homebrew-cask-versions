cask "geogebra5" do
  version "5.0.688.0"
  sha256 "877016d362ba3f1f2edc7852795e540e136cd6a6f9cfab7de62905dc6e98bc2b"

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
