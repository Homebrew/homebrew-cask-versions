cask 'telegram-desktop-dev' do
  version '1.1.10'
  sha256 'abdbcc65de01e10984f32cb1a6b5b3de72a2cf97689705a819bbfbdad8d4e26f'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  conflicts_with cask: 'telegram-desktop'
  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
