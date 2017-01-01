cask 'telegram-desktop-dev' do
  version '0.10.22.alpha'
  sha256 '2693d0d0a54c9bcaa4768c3a3ba44cac0e8b4188501998de1fa6bd69e5d9e0a2'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
