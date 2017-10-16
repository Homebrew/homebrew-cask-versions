cask 'telegram-alpha' do
  version '3.5-107796,667'
  sha256 '5e0c4e7a47de22e2ce85410a0769373bfce188c985f7ef17ed3cd4e8ab57685e'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: 'e4f2b259dd3ca75027ff28dfdf76e2b8efa3d835be1e97dc1b77114b2fb3bcaf'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
