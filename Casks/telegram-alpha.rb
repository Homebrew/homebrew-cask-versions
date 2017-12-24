cask 'telegram-alpha' do
  version '3.7-111699,763'
  sha256 '59cc0f0cd0ccad4b1d13fd3cb378dad87b39d9076447b0b44cf6a7d5e6eea23b'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '93fb0d11a12758f418b1c7e4bd7b2dc7df44894af65eefc2b99bd5b9e5b90f85'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
