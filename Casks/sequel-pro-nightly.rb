cask 'sequel-pro-nightly' do
  version 'rd673b235f0'
  sha256 'd4f3b4385e9c47343461ec11202de147188ae09f5675dcc317bfe602b3350aeb'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end
