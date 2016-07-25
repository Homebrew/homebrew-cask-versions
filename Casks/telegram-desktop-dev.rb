cask 'telegram-desktop-dev' do
  version '0.9.60.alpha'
  sha256 'b02785b72680df862318a38b7c5cd2c1033f51a1066b354707fb1c7292dc0e5f'

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://tdesktop.com/'
  license :gpl

  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
