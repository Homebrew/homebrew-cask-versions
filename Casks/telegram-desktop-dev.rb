cask 'telegram-desktop-dev' do
  version '1.0.25.alpha'
  sha256 'dc9d89288582a1b898bc480c68a7140d4b0a73b53cfdee36d64054fba2b3a404'

  # tdesktop.com was verified as official when first introduced to the cask
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://desktop.telegram.org/'

  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
