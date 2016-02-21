cask 'sequel-pro-nightly' do
  version 'rf2575a3a75'
  sha256 'd922042efc19d50be57cc3cca734267c1cab3a0e313d844f43775bc8543ae20e'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end
