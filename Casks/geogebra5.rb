cask "geogebra5" do
  version "5.0.647.0"
  sha256 "1614f82d1c90701f0967e9065f0d6d347ecf11c4c891c6417421e00832b5d847"

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-MacOS-Installer-withJava-#{version.dots_to_hyphens}.zip"
  name "GeoGebra"
  desc "Previous major version of GeoGebra 6"
  homepage "https://www.geogebra.org/"

  livecheck do
    url "https://download.geogebra.org/package/mac"
    strategy :header_match do |headers|
      v = headers["location"][%r{/GeoGebra-MacOS-Installer-withJava-(\d+(?:-\d+)*)\.zip}i, 1]
      v.tr("-", ".")
    end
  end

  app "Geogebra.app"

  uninstall quit:       "org.geogebra5.mac",
            login_item: "Geogebra"
end
