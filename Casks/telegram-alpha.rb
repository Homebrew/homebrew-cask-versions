cask 'telegram-alpha' do
  version '3.5.3-109376,697'
  sha256 '9f6c3cf0bf4d8cd2ace0dcfccaa5b9357d809d8bd6074e358a5d62c52fb63af1'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '2b537449f817ad42aaedd44cd9ab856e31e657ed569ee91bcd987db99c9bf4c6'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
