cask "alfred3" do
  version "3.8.6_972"
  sha256 "20b111cbd22fb57f8a1d11348e12b55f9725c8eca6517790b1df8e2cd9c9a9b8"

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  appcast "https://www.alfredapp.com/app/update/general.xml"
  name "Alfred"
  desc "Application launcher and productivity software"
  homepage "https://www.alfredapp.com/"

  auto_updates true

  app "Alfred #{version.major}.app"

  uninstall quit: "com.runningwithcrayons.Alfred-#{version.major}"

  zap trash: [
    "~/Library/Application Support/Alfred #{version.major}",
    "~/Library/Caches/com.runningwithcrayons.Alfred-#{version.major}",
    "~/Library/Preferences/com.runningwithcrayons.Alfred-#{version.major}.plist",
    "~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences-#{version.major}.plist",
    "~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences-#{version.major}.savedState",
  ]
end
