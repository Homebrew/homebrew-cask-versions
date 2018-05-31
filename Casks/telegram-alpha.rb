cask 'telegram-alpha' do
  version '3.9.2-126187,1055'
  sha256 'd12e9d1106c8d016572d7247d4353289231aa9d8256ff3bf1a1ce7c9a4e2ab2d'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '187d0f2fc4eb35f3f0b1b4a10bc6cfd2b2b6a0142b356f52d92ea8cc69dfb46a'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
