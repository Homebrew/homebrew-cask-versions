cask 'sequel-pro-nightly' do
  version 'r953392263e'
  sha256 'ce6bbc0663088453a9c52675e03b10892339ee13700567c1fa7ae74886c65ecc'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
