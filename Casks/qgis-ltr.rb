cask "qgis-ltr" do
  version "3.16.13,20211105_160615"
  sha256 "2b2420d6baf889026e2267418317ac1aeebd76b0d824807c11e003c0e0f47fad"

  url "https://qgis.org/downloads/macos/ltr/qgis_ltr_final-#{version.before_comma.dots_to_underscores}_#{version.after_comma}.dmg"
  name "QGIS LTR"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://qgis.org/downloads/macos/qgis-macos-ltr.sha256sum"
    strategy :page_match do |page|
      match = page.match(/qgis_ltr_final[._-]v?(\d+(?:_\d+)+)[._-](\d+_\d+)\.dmg/i)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  app "QGIS-LTR.app"
end
