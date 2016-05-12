cask 'telegram-dev' do
  version '0.9.48'
  sha256 '34fd43368f13507f954ed42a382f28305e38f2a6643c90d621519184b44399c4'

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://tdesktop.com/'
  license :gpl

  app 'Telegram.app'
end
