cask "qgis-ltr" do
  version "3.16.12,20211025_052210"
  sha256 "90ae806f2974c275288ee36778518228aa7b1f36e7c9d7e41bac111fadd2890e"

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
