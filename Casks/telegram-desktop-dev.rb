cask 'telegram-desktop-dev' do
  version '1.1.9'
  sha256 '89bbb2408ff93990bb0ddba281ba441d2f412ee53321264b5ddc46ee2b0c9f05'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  conflicts_with cask: 'telegram-desktop'
  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
