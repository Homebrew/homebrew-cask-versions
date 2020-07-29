cask "sublime-text2" do
  version "2.0.2"
  sha256 "906e71e19ae5321f80e7cf42eab8355146d8f2c3fd55be1f7fe5c62c57165add"

  url "https://download.sublimetext.com/Sublime%20Text%20#{version}.dmg"
  appcast "https://www.sublimetext.com/updates/2/stable/appcast_osx.xml"
  name "Sublime Text 2"
  homepage "https://www.sublimetext.com/2"

  app "Sublime Text 2.app"
  binary "#{appdir}/Sublime Text 2.app/Contents/SharedSupport/bin/subl"

  zap trash: [
    "~/Library/Application Support/Sublime Text 2",
    "~/Library/Preferences/com.sublimetext.2.plist",
    "~/Library/Caches/com.sublimetext.2",
    "~/Library/Saved Application State/com.sublimetext.2.savedState",
  ]
end
