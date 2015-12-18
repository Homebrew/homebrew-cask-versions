cask 'sequel-pro-nightly' do
  version 'r7364a3bad2'
  sha256 '1bbac0eb592502fbe624855b5ffee2861580663a1300047da274191d55abf259'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
