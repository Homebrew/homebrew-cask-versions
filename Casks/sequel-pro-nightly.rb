cask :v1 => 'sequel-pro-nightly' do
  version 'r2cb875fb99'
  sha256 '9f744fc5af974970670026279e996156e23abd52f45193da3d6da3926b2b54c2'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
