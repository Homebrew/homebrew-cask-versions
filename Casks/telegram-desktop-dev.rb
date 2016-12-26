cask 'telegram-desktop-dev' do
  version '0.10.17.alpha'
  sha256 'c0a18b73c86683fa13137422b501a1bb43075ba48ea160444dc971153d6c94e6'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
