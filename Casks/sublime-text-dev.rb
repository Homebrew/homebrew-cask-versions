cask 'sublime-text-dev' do
  version '3.189'
  sha256 '163f46fbe47e369fa89b1dfafcfa1df577e87ebaa7aa502fbe77cebf1c7d2ced'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version.no_dots}.dmg"
  appcast "https://www.sublimetext.com/updates/#{version.major}/dev/appcast_osx.xml"
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
