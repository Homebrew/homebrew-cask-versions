cask 'telegram-desktop-dev' do
  version '0.9.55'
  sha256 '0585d11681400956223c1c0fbdc62fecdda8f6aeca29eb9ed0cf7fd7e199806f'

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://tdesktop.com/'
  license :gpl

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
