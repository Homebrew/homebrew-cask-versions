cask :v1 => 'telegram-dev' do
  version '0.8.40.dev'
  sha256 '8ab0de90a581da1685e8ff3224ccf286dd74bb2dde241a69917f1eafd55d8e66'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
