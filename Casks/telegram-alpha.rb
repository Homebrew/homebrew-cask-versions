cask 'telegram-alpha' do
  version '0.1.3958,91'
  sha256 '5ceb82666a10994d8b50b996f14a094bd180aa85709bf8dc26f98128e56e86ef'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '31ec158fc213ae3a4cdcabed7902fb35b5154b4b9556881af026cfc1afebb94d'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'
  
  app 'Telegram.app'
end
