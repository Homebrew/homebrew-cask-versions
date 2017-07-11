cask 'telegram-alpha' do
  version '3.00.1.100410,508'
  sha256 '98c0f884d4e9c356f0db3be4b2ee22fe1cadcb904c81c2af3b46177497fab066'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '46277f5f22dfd5475925ea0e99dbae7ccfcbe82d8941b2df296bda8c63ec97d1'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
