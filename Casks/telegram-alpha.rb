cask 'telegram-alpha' do
  version '3.5.3-109433,699'
  sha256 '2fa494ae639da9b1fe8ab56692cd46cdd1420e4f4faff5e8a7acf1170df5746d'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '077df0569b4ba1963a0a91f41a0b3229d2cfbd895e34ac13ddefd1cc5fac7e2c'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
