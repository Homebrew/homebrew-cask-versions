cask "alfred3" do
  version "3.8.5_970"
  sha256 "b3b2341ac9574b0a6a78b62c747e852a41ecd54fae921e446e05b076166b5102"

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  appcast "https://www.alfredapp.com/app/update/general.xml"
  name "Alfred"
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
