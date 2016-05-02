cask 'telegram-dev' do
  version '0.9.46.alpha'
  sha256 '6eac9eb01b9c1dda323771291b8ad4b319800d7b00a93b5ad3d7080323d0030a'

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://tdesktop.com/'
  license :gpl

  app 'Telegram.app'
end
