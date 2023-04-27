cask "ksdiff2" do
  version "2.4.2,126,sep-7-2021"
  sha256 "11a4e09eab56fed96cb1e1fb5fbec350a726ee8dd07a7d0d1d992dd4e44b6d68"

  url "https://updates.kaleidoscope.app/v#{version.major}/prod/ksdiff-#{version.csv.first}-#{version.csv.second}-#{version.csv.third}.zip"
  name "ksdiff v2"
  desc "Command-line tool for the App Store version of Kaleidoscope v2"
  homepage "https://kaleidoscope.app/ksdiff#{version.major}"

  conflicts_with cask: [
    "kaleidoscope",
    "kaleidoscope2",
    "ksdiff",
  ]

  pkg "ksdiff-#{version.csv.first}/Install ksdiff.pkg"

  uninstall pkgutil: "com.blackpixel.kaleidoscope.ksdiff.installer.pkg"

  # No zap stanza required

  caveats do
    discontinued
  end
end
