cask 'telegram-desktop-dev' do
  version '1.1.2'
  sha256 '70eb515b2dd628c2d164aed100c22f694544a47e1b351b580d2d3da2f8c80e32'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram-desktop'
  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
