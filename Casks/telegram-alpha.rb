cask 'telegram-alpha' do
  version '3.8.3-123922,1010'
  sha256 '8bccad40f3c9dc04a90b708ebdad5b77e39d1d58a7d1ab19b6692921a3ea9e79'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: 'c9942a795a974c48ae2007c7eeb82101c95b51a244f9fad9c5f05bbb4156dca4'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
