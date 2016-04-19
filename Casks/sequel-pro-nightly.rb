cask 'sequel-pro-nightly' do
  version 'ra00f2a7fda'
  sha256 'ed3e6603ec04aa60b2bce25e81cf569caebf0b8d5a611657175bc5e1983c9e50'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end
