cask 'sequel-pro-nightly' do
  version 'r6457da276b'
  sha256 '10fe24138acdf2deed83fc921414349bf09296387f4000a9574e8f003586afa0'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end
