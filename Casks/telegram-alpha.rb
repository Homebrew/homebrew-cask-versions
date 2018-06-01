cask 'telegram-alpha' do
  version '3.9.2-126293,1057'
  sha256 'cd249c1d6b3d321c53698c43096adc5ebf98ae0e1375f84a34963cf3f57a51d6'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: 'b32247e7d2aecf99bdb2fd9167fbd317b5e28e1f22ff3a9c94dfde20257b4cea'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
