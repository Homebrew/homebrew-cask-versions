cask :v1 => 'sequel-pro-nightly' do
  version 'r8ad55ac0c2'
  sha256 '14b47215ee8eaeef987abd0837576b87d1cc66c7b1f39b2d6af12b4d40cf1fb3'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
