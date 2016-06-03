cask 'webstorm-eap' do
  version '162.646.2'
  sha256 '3639bc41ffdc79b37ec9d6d0f74ab634b99456fe757e3c2341da5bd9c98a3d9f'

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
