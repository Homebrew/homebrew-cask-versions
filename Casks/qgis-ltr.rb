cask "qgis-ltr" do
  version "3.22.16,20230203_132603"
  sha256 "f73f8b18806bbf30cd198806e437c01d2d69be047b3d26185270faa3d35d0ad6"

  url "https://qgis.org/downloads/macos/ltr/qgis_ltr_final-#{version.csv.first.dots_to_underscores}_#{version.csv.second}.dmg"
  name "QGIS LTR"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://qgis.org/downloads/macos/qgis-macos-ltr.sha256sum"
    regex(/qgis_ltr_final[._-]v?(\d+(?:_\d+)+)[._-](\d+_\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  app "QGIS-LTR.app"

  zap trash: [
    "~/Library/Application Support/QGIS",
    "~/Library/Caches/QGIS",
    "~/Library/Saved Application State/org.qgis.qgis*.savedState",
  ]
end
