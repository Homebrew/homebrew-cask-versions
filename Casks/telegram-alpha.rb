cask 'telegram-alpha' do
  version '3.9.2-126042,1050'
  sha256 '952f4ef9d6b83d0c744a0f7832d1754b02dde31108d396073dec4a8e57f8f1dd'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: 'bd80fac9945344bdef041c724a6628aed9ca26e16091eb2ca96a70c28c0fb95d'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
