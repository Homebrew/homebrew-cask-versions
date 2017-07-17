cask 'telegram-desktop-dev' do
  version '1.1.13.alpha'
  sha256 'c5f22e59a6b27a1a616a62b61bb1ca07e943e38a24ac4093d24767d1549e5c19'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  conflicts_with cask: 'telegram-desktop'
  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
