cask 'telegram-alpha' do
  version '3.9.2-126334,1058'
  sha256 '03b86b0a1741bcfb7dd2c3b8405a873716e5452335f9d9dc7c2dfa5231a1d148'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '91ed7e5a117781acc38ce4e7fcb49412a9576ed8bb7c5df31d127c6814e04dc4'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
