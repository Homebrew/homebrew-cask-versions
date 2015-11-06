cask :v1 => 'sequel-pro-nightly' do
  version 'rb21b4ff0c8'
  sha256 '501a7483d0c7540497905195cd4b3c5da00f20a4e0dfabced62a103b6774980d'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
