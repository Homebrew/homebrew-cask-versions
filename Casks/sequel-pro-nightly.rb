cask :v1 => 'sequel-pro-nightly' do
  version 'rb2d798ba92'
  sha256 'd63e42831828ee98601f390fffd6fc3aa6f292f6c7c2a1be047fac06d37add82'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
