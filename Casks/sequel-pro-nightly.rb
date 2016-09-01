cask 'sequel-pro-nightly' do
  version 'r50a0f18540'
  sha256 '9edb2e6c023088175d1a136e1ad6647819e6315eb4f48dbcec353ec150edac15'

  url "https://sequelpro.com/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end
