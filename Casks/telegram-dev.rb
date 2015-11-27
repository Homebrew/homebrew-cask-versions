cask :v1 => 'telegram-dev' do
  version '0.9.12.dev'
  sha256 '4dc0d1cb9454231daedfe01043a2b27acbeed5acddfa8aa5c93d97797a14feeb'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
