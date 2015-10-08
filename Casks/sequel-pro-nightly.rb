cask :v1 => 'sequel-pro-nightly' do
  version 're3b8f07f34'
  sha256 'd45ad07b457a23107588cf8421db6ee9a96252074bcaf880d128b111a25d5df7'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
