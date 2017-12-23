cask 'telegram-alpha' do
  version '3.7-111696,762'
  sha256 '800cc91d9b7fd4fb24c9a925ee6b47bf0d9dc29b74d7ed6869dfbda269fea4b5'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '0c7faefe0e0483670c070e0760eeda4efe4810f59a0716b8daf8071f095bc2e9'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
