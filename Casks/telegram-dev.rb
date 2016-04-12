cask 'telegram-dev' do
  version '0.9.39.dev'
  sha256 '8c0b934ff376b44af31516f69208fcc7a8530c89b8b2005ad6a9139861fed72a'

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://tdesktop.com/'
  license :gpl

  app 'Telegram.app'
end
