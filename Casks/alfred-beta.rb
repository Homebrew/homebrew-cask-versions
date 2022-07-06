cask "alfred-beta" do
  version "5.0,EA6,2042"
  sha256 "2b6dbac94210629eecf9caa8daf99a472b5a93846d11525b3469e1bf593068cb"

  url "https://cachefly.alfredapp.com/Alfred_#{version.csv.first}_#{version.csv.second}_#{version.csv.third}.dmg"
  name "Alfred"
  desc "Application launcher and productivity software"
  homepage "https://www.alfredapp.com/alfred-5-whats-new/"

  livecheck do
    url "https://www.alfredapp.com/app/update#{version.major}/general.xml"
    strategy :page_match do |page|
      match = page.match(/Alfred[._-]v?(\d(?:\.\d+)+)[._-](EA\d+)[._-](\d+)\.tar\.gz/i)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true

  app "Alfred #{version.major}.app"

  uninstall quit: "com.runningwithcrayons.Alfred"

  zap trash: [
    "~/Library/Application Support/Alfred",
    "~/Library/Caches/com.runningwithcrayons.Alfred",
    "~/Library/Cookies/com.runningwithcrayons.Alfred.binarycookies",
    "~/Library/Preferences/com.runningwithcrayons.Alfred.plist",
    "~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist",
    "~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState",
  ]
end
