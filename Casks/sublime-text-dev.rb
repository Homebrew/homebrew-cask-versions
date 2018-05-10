cask 'sublime-text-dev' do
  version '3172'
  sha256 'ca96f2ac146cbcb56a250a745dcee1c632629fb9dc71a4b852663b076ce93402'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/dev/appcast_osx.xml',
          checkpoint: '581ce14aaaca1f6f54be5db98359d9700f4e8f10841c07dc0f9629098b0338db'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/3dev'

  conflicts_with cask: 'sublime-text'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: 'com.sublimetext.3'

  zap trash: [
               '~/Library/Application Support/Sublime Text 3',
               '~/Library/Caches/com.sublimetext.3',
               '~/Library/Preferences/com.sublimetext.3.plist',
               '~/Library/Saved Application State/com.sublimetext.3.savedState',
             ]
end
