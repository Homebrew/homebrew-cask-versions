cask 'telegram-desktop-dev' do
  version '0.9.57'
  sha256 '05b76d616b6bb2f8f15f0b9aa4885537fcc65f54b72fba2ed05453524175fc76'

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://tdesktop.com/'
  license :gpl

  depends_on macos: '>= :mountain_lion'

  # Renamed to avoid conflict with telegram
  app 'Telegram.app', target: 'Telegram Desktop.app'
end
