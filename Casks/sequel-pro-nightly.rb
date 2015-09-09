cask :v1 => 'sequel-pro-nightly' do
  version 'r6f00eaa2e6'
  sha256 '514b8f9da31154d97ceab05e6f4b3211126dcd2a64af7eec322eb7bbec6d6bbb'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
