cask :v1 => 'sequel-pro-nightly' do
  version 'r38005592c2'
  sha256 '6240e44580dfb3def307c33f7adc67783f0398f01bf77eb1696d6661c7031ea2'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
