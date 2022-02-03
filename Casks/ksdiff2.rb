cask "ksdiff2" do
  version "2.4.2,126,sep-7-2021"
  sha256 "11a4e09eab56fed96cb1e1fb5fbec350a726ee8dd07a7d0d1d992dd4e44b6d68"

  url "https://updates.kaleidoscope.app/v2/prod/ksdiff-#{version.csv.first}-#{version.csv.second}-#{version.csv.third}.zip"
  name "ksdiff"
  desc "Command-line tool for the App Store version of Kaleidoscope"
  homepage "https://kaleidoscope.app/ksdiff#{version.major}"

  livecheck do
    url :homepage
    regex(%r{/ksdiff[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-](\w+(?:-\d+)*)\.zip}i)
    strategy :page_match do |page, regex|
      js_file = page[%r{src=["']?(/ksdiff\d*\.\w+\.js)["' >]}i, 1]
      next [] if js_file.blank?

      js_file_data = Homebrew::Livecheck::Strategy.page_content("https://kaleidoscope.app#{js_file}")
      next [] if js_file_data[:content].blank?

      js_file_data[:content].scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  conflicts_with cask: "kaleidoscope2"

  pkg "ksdiff-#{version.csv.first}/Install ksdiff.pkg"

  uninstall pkgutil: "com.blackpixel.kaleidoscope.ksdiff.installer.pkg"

  caveats <<~EOS
    The #{token} Cask is not needed when installing Kaleidoscope version 2 via Cask. It
    is provided for users who have purchased Kaleidoscope version 2 via the App Store.
  EOS
end
