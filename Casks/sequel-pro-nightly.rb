cask 'sequel-pro-nightly' do
  version 'r6c1c212be5'
  sha256 '22b842544ebb3cc7dd6184140a52a828b4be38e0e2b50d2422b05d619c44d2a2'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end
