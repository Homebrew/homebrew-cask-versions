cask 'sublime-text-dev' do
  version '3.210'
  sha256 'a52f309f5dc708b016ceb8ee0960d24252050c8fcc9f3a6f22c275b8a27e1767'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version.no_dots}.dmg"
  appcast "https://www.sublimetext.com/updates/#{version.major}/dev/appcast_osx.xml",
          configuration: version.no_dots
  name 'Sublime Text'
  homepage "https://www.sublimetext.com/#{version.major}dev"

  auto_updates true
  conflicts_with cask: 'sublime-text'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: "com.sublimetext.#{version.major}"

  zap trash: [
               "~/Library/Application Support/Sublime Text #{version.major}",
               "~/Library/Caches/com.sublimetext.#{version.major}",
               "~/Library/Preferences/com.sublimetext.#{version.major}.plist",
               "~/Library/Saved Application State/com.sublimetext.#{version.major}.savedState",
             ]
end
