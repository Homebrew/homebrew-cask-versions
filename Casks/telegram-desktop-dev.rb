cask 'telegram-desktop-dev' do
  version '1.3.16'
  sha256 '6845d0bb1c9dca30b80cb8845a8d582f28dfe25e6b9e76287ce64529b124e184'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.alpha.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  conflicts_with cask: 'telegram-desktop'
  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
