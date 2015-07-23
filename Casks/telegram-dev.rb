cask :v1 => 'telegram-dev' do
  version '0.8.41.dev'
  sha256 '42823fa351267b6daabd90f5531b6882f64857286ab13102aea11a4cb721b385'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
