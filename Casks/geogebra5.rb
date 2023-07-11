cask "geogebra5" do
  version "5.0.790.0"
  sha256 "91522f799284f2ca93413d1783148d787947c5fd2d3629c592f47b5863b46d66"

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-MacOS-Installer-withJava-#{version.dots_to_hyphens}-x64.zip"
  name "GeoGebra"
  desc "Solve, save and share math problems, graph functions, etc"
  homepage "https://www.geogebra.org/"

  livecheck do
    url "https://download.geogebra.org/package/mac"
    regex(%r{/GeoGebra[._-]MacOS[._-]Installer[._-]withJava[._-]v?(\d+(?:-\d+)+)[._-]x64\.zip}i)
    strategy :header_match do |headers, regex|
      match = headers["location"][regex, 1]
      next if match.blank?

      match.tr("-", ".")
    end
  end

  app "Geogebra.app"

  uninstall quit:       "org.geogebra#{version.major}.mac",
            login_item: "Geogebra"

  zap trash: "~/Library/Saved Application State/org.geogebra5.mac.savedState"
end
