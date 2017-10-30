cask 'telegram-alpha' do
  version '3.5.3-108430,680'
  sha256 'f85e77ceb2d86f6ed9c36d9c21224725a6fe8966bcd4e934cdaddd5c7e890649'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: 'd5e6bab6bf84d54b66e1eec277ff0ee3426dab8a0cffb93ae1ad81096383c131'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
