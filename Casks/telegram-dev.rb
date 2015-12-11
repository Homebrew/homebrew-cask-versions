cask :v1 => 'telegram-dev' do
  version '0.9.14.dev'
  sha256 'db94e511830d2e5103c82894b0af9d5fae5e7240ab2a2a940a32d757aefdd8ae'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
