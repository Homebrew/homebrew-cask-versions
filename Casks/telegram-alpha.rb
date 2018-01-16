cask 'telegram-alpha' do
  version '3.7.3-114982,847'
  sha256 '3b0398e884ac83cf7615f87384f90e451ff9bf657433ad6d1c02bbc88e1a9912'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: 'f7abb07f5b5fcebcf5c60f5504ef7c96cf3bd3a05f108043741fc0f4b7fcf6d7'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
