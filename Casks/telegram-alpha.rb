cask 'telegram-alpha' do
  version '3.8.4-124777,1023'
  sha256 'aafceead6f5c2c10131b82bd060104cbe334ba4d1166085c4a5d27e588b13b3d'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: 'a996ac94f8cd40d3f2b30c1b07b3de3d6a3bfe7c53a557ddea15fd70471a17f7'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
