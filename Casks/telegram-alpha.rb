cask 'telegram-alpha' do
  version '3.9.1-125974,1049'
  sha256 '285d0890a57db002382acc9cc38f8dfc7c2b06e7157acf198411aa51a32838c3'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: 'dd6f4a0d0f83746b5b6a7c47cb138d3f9ad4a6ea6575a8621e6d3b6d62133b13'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
