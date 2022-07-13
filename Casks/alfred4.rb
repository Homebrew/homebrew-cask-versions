cask "alfred4" do
  version "4.6.7,1305"
  sha256 "9f30310921bd7a7d52d321599674fab916dce36762711e5ad3830d233dcca5aa"

  url "https://cachefly.alfredapp.com/Alfred_#{version.csv.first}_#{version.csv.second}.dmg"
  name "Alfred"
  desc "Application launcher and productivity software"
  homepage "https://www.alfredapp.com/"

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
