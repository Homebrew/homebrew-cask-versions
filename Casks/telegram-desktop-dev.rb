cask 'telegram-desktop-dev' do
  version '1.0.29'
  sha256 'fda92753e5311eec0b545bebcc1909164bd7c7f63bff434692ea7bcc4925da88'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
