cask 'telegram-alpha' do
  version '3.8.3-124457,1013'
  sha256 '0c81c2fcbdffff0597b7c58dd0e80c3370686c7b2f7cba26f99fd2e90c6a2854'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '87d7bdeb7f3a24454ba9b442f486bac90d56fd5d9faf5e6015c03a5ee49fac8d'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
