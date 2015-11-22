cask :v1 => 'sequel-pro-nightly' do
  version 'r7d4ec977bf'
  sha256 '9594d9cf3f12a2bef780608825642453145083b4419e926bd1a25b37a6eb0406'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
