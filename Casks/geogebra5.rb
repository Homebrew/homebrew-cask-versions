cask "geogebra5" do
  version "5.0.657.0"
  sha256 "43fd3ad6a447599e2d0bdd21096f3a0d7fb4834effae3ab0da1c800948747b3c"

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
