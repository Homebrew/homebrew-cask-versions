cask 'telegram-desktop-dev' do
  version '1.2.8.alpha'
  sha256 '133d090433e53c3d4ba59ac4f9587d8a5574028a8897472c7ddcaecf8a3d0a90'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  conflicts_with cask: 'telegram-desktop'
  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
