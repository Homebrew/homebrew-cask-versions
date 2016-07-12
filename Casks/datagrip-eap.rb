cask 'datagrip-eap' do
  version '162.1121.36'
  sha256 'a88ef7b6b8e42a58e9ef38ebac663e1e5c2a10e6a1d56f63a2e9474e41d1764e'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}.dmg"
  name 'DataGrip'
  homepage 'https://confluence.jetbrains.com/display/DBE/DataGrip+2016.2+EAP'
  license :commercial

  conflicts_with cask: 'datagrip'

  app 'DataGrip.app'

  zap delete: [
                '~/Library/Preferences/DataGrip2016.2',
                '~/Library/Application Support/DataGrip2016.2',
                '~/Library/Caches/DataGrip2016.2',
                '~/Library/Logs/DataGrip2016.2',
              ]
end
