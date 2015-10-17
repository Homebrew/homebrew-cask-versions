cask :v1 => 'telegram-dev' do
  version '0.9.4.dev'
  sha256 'e3646b37a5de8297e7c5267124f8841b8aa784e6713a8b507ab0dc3ff3515244'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
