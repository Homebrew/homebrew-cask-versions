cask :v1 => 'sequel-pro-nightly' do
  version 'r465062dacc'
  sha256 'bf3d9e43983d8eede042f311cdb7811f92291da28d86a4c17c91e3984a8e3905'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
