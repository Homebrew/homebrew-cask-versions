cask :v1 => 'sequel-pro-nightly' do
  version 'rfdef91b45a'
  sha256 'ff82cb9218250cfc1b4a573ea67cf49f4be1cb886f6aefd0ee35250fb06d1551'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
