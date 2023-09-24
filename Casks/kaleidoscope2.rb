cask "kaleidoscope2" do
  version "2.4.5,1457,dec-20-2021"
  sha256 "bbe5afc9f9292309527b6149e832c85460624e330c0768cd706d0629e0755611"

  url "https://updates.kaleidoscope.app/v#{version.major}/prod/Kaleidoscope-#{version.tr(",", "-")}.app.zip"
  name "Kaleidoscope v2"
  desc "Spot and merge differences in text and image files or folders"
  homepage "https://www.kaleidoscope.app/"

  livecheck do
    url "https://updates.kaleidoscope.app/v#{version.major}/prod/appcast"
    regex(/Kaleidoscope-(\d+(?:\.\d+)+)-(\d+)-(\w+(?:-\d+)*)\.app\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  auto_updates true
  conflicts_with cask: "kaleidoscope"
  depends_on macos: ">= :sierra"

  app "Kaleidoscope.app"
  binary "#{appdir}/Kaleidoscope.app/Contents/Resources/bin/ksdiff"

  zap trash: [
    "~/Library/Application Support/com.blackpixel.kaleidoscope",
    "~/Library/Caches/com.blackpixel.kaleidoscope",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope",
    "~/Library/Preferences/com.blackpixel.kaleidoscope.plist",
    "~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState",
  ]
end
