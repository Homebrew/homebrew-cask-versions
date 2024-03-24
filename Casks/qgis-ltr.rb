cask "qgis-ltr" do
  version "3.34.5,20240322_163526"
  sha256 "c666dc4cf868f86e50b606b8986a5730b635bc33ec3346df3431167674f9afaa"

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

  depends_on macos: ">= :high_sierra"

  app "QGIS-LTR.app"

  zap trash: [
    "~/Library/Application Support/QGIS",
    "~/Library/Caches/QGIS",
    "~/Library/Saved Application State/org.qgis.qgis*.savedState",
  ]
end
