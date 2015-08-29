cask :v1 => 'sequel-pro-nightly' do
  version 'r4552d5daa1'
  sha256 'fc3b19e66fd92cecff5707783db3537f0662f4df6ac0792a5bc9669101295f21'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
