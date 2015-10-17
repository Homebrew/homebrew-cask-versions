cask :v1 => 'sequel-pro-nightly' do
  version 'r3c1850c616'
  sha256 'a3719da350cffa60da68ee077056e4e9bdb96b6b29df5371e8738620ae5cbc0d'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
