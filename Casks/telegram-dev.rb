cask :v1 => 'telegram-dev' do
  version '0.9.7.dev'
  sha256 'd4705e32075ece04e468be84a59ebb49f626be87acb697737f1eaaa77da7ba0a'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
