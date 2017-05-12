cask 'telegram-desktop-dev' do
  version '1.0.37.alpha'
  sha256 '4d9220bfb06f608cdfab3acd90bca40054688b88973c511d31648a9ffc4fce5f'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  conflicts_with cask: 'telegram-desktop'
  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
