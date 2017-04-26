cask 'telegram-alpha' do
  version '2.97.94524,310'
  sha256 '2bf5750155a50996bac25c0fa8d8dd85df1fca93af4d3a0224f0c73320da0810'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '50ceae2033aa982c80bd7a73b00e9580d75f23383d39dec583a4e8e6a2928ed1'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
