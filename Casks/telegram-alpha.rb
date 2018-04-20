cask 'telegram-alpha' do
  version '3.8.3-122753,997'
  sha256 '73a71798cc88f6de3c3b3944c0c8fa47d484fd0de48c3caf8411a9b2c6cd7252'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: 'a59fe3ee6254db92d3a2df6e0983e11f1b4fc9040823362a65c44712f22d5f04'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
