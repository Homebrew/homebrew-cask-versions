cask :v1 => 'sequel-pro-nightly' do
  version 'rf02fb78706'
  sha256 '4ca462a91369da2ec26c00161c787bae08fd08eaf21af98d3f5b9f2cbe76770c'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
