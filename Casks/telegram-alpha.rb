cask 'telegram-alpha' do
  version '0.1.3864'
  sha256 '00e141ee6993a95d064df3e6377ea058b0095370730ef8d9710f74fa02d91775'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/89?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '6cb12d7e9c70704880f07b308294bc008854ec4a7d0e13f50fc385cd07e2c62b'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  
  app 'Telegram.app'
end
