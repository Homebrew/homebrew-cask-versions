cask 'telegram-desktop-dev' do
  version '1.1.7'
  sha256 '52c80d990bfce7a58caebca57c7d5f23e8de8df98aad7ec3406ae56bd0165b85'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  conflicts_with cask: 'telegram-desktop'
  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
