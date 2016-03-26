cask 'sequel-pro-nightly' do
  version 'r27459a4238'
  sha256 'f85c32cf0390f337bb2a15bbecd1bc6f5bdaca57b4843030a08ce25f550d484d'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end
