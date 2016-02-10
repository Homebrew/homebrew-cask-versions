cask 'telegram-dev' do
  version '0.9.14.dev'
  sha256 'db94e511830d2e5103c82894b0af9d5fae5e7240ab2a2a940a32d757aefdd8ae'

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://tdesktop.com/'
  license :gpl

  app 'Telegram.app'
end
