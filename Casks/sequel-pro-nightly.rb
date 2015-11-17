cask :v1 => 'sequel-pro-nightly' do
  version 'r1f7684a8d0'
  sha256 '0bbfd3597ef1622518391099c4a1b92ca1e3a3ac5081231fcd4a9214472302c6'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
