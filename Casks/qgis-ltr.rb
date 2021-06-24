cask "qgis-ltr" do
  version "3.16.8,20210619_044746"
  sha256 "9d233bb074e73f6347168f29a97c65622617f993ad137d11b96c785b431300bc"

  url "https://qgis.org/downloads/macos/ltr/qgis_ltr_final-#{version.before_comma.dots_to_underscores}_#{version.after_comma}.dmg"
  name "QGIS LTR"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://qgis.org/downloads/macos/qgis-macos-ltr.sha256sum"
    strategy :page_match do |page|
      match = page.match(/qgis_ltr_final[._-]v?(\d+(?:_\d+)+)[._-](\d+_\d+)\.dmg/i)
      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  app "QGIS-LTR.app"
end
