cask 'telegram-alpha' do
  version '3.8.3-124395,1011'
  sha256 'ccb72b9c34d7fe3d0a20f322eb658725316fc8f2cd1e7b012b0c76308f951bb2'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: '7ab7ceed95b281ef4139fb8d45ddbe687bf0f7860771432e1d3241e9de85c5d1'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
