cask :v1 => 'sequel-pro-nightly' do
  version 'rea1d72868a'
  sha256 '90d85702a8ff4c30eccff09c620f409997bf83aa045c15c473bfbb9305cbb81d'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
