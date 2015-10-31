cask :v1 => 'sequel-pro-nightly' do
  version 'r2f2aafb4f5'
  sha256 '096debea369d156444f220b3a99abfcc11d2884e23f4d04cf834fd0fef6bbc42'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
