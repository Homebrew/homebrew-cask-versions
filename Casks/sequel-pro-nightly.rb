cask :v1 => 'sequel-pro-nightly' do
  version 'raa192cfe24'
  sha256 'c350cb819cf6d44a6f321b1b2338376115675008516033c20844dbcc7cb5e8b9'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
