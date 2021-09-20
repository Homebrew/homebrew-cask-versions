cask "qgis-ltr" do
  version "3.16.11,20210910_192934"
  sha256 "6d0954429cc67d5eed684de5d1d728464d8da23300d42116e2f6c774f9b89a52"

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
