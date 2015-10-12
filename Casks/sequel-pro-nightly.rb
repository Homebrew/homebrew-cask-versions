cask :v1 => 'sequel-pro-nightly' do
  version 'rd1323f0606'
  sha256 '063f910668f18661c57f9d69e168466fa0cdf48ac567360b4c3d57744dc426d3'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
