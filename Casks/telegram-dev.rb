cask 'telegram-dev' do
  version '0.9.49'
  sha256 'b70eaaf50674b5752b044bcbce3855de314c0e00e25a8e2f530658beeb324315'

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://tdesktop.com/'
  license :gpl

  app 'Telegram.app'
end
