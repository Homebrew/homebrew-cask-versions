cask "qgis-ltr" do
  version "3.16.7,20210609_154722"
  sha256 "305062bc63915ab2430a1dec3bc78c39573b85850574227568d54bfc7e3b26cc"

  url "https://qgis.org/downloads/macos/ltr/qgis_ltr_final-#{version.before_comma.dots_to_underscores}_#{version.after_comma}.dmg"
  name "QGIS LTR"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://qgis.org/downloads/macos/qgis-macos-ltr.sha256sum"
    strategy :page_match do |page|
      match = page.match(/qgis_ltr_final-(\d+(?:_\d+)*)_(\d+_\d+)\.dmg/i)
      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  app "QGIS-LTR.app"
end
