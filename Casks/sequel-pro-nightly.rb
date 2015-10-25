cask :v1 => 'sequel-pro-nightly' do
  version 're7cf9cde83'
  sha256 'e6de9358c5e064383fc80d406029e947f2137dd2513250f8a45d3af2d97a47ff'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
