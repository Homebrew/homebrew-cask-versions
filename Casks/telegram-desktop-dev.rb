cask 'telegram-desktop-dev' do
  version '0.10.2.alpha'
  sha256 '5ecbaa9dc519e6a0e0be23ce4bf6db8fcef2305203aaa216dcd1232e1c918a9d'

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://tdesktop.com/'
  license :gpl

  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
