cask 'webstorm-eap' do
  version '162.426.3'
  sha256 '71165af62a00f0b2773d80de2f77b058979dfdf40f2d4dfb48c10e930d313c72'

  url "https://download.jetbrains.com/webstorm/WebStorm-EAP-#{version}.dmg"
  name 'WebStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'
  license :commercial

  conflicts_with cask: 'webstorm'

  app 'WebStorm 2016.2 EAP.app'

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                '~/.WebStorm2016.2',
                '~/Library/Preferences/WebStorm2016.2',
                '~/Library/Application Support/WebStorm2016.2',
                '~/Library/Caches/WebStorm2016.2',
                '~/Library/Logs/WebStorm2016.2',
              ]
end
