cask "geogebra5" do
  version "5.0.651.0"
  sha256 "fe814f2981dbb2d9377297c458fff9a2e87e86a5b873001138bf2f12afeacbd8"

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
