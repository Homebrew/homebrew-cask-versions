cask :v1 => 'sequel-pro-nightly' do
  version 'rffbf7a4a9d'
  sha256 '311d06cbee76cc66375b6c4749e11d6050c829d0c56aa2ce9b849bc82e864dc0'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
