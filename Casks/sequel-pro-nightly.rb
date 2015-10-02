cask :v1 => 'sequel-pro-nightly' do
  version 'rc5878bdad3'
  sha256 'f55b936ed7a9c3f4a3545dd7f764259c89d1bb19c0a0cd4f4141b9e240a89fe8'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
