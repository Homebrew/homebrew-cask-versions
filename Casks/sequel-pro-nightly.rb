cask :v1 => 'sequel-pro-nightly' do
  version 'r71c013de73'
  sha256 '52356757d71065a95f5b95bde29f780e9a7bf4d6decb8a0123bed2653a68a5f5'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
