cask 'telegram-dev' do
  version '0.9.43.dev'
  sha256 '212b1b527a645a91a68c4a6a0e67a99397062bf9136ff96cb15e60aa9e495550'

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://tdesktop.com/'
  license :gpl

  app 'Telegram.app'
end
