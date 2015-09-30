cask :v1 => 'vivaldi-snapshot' do
  version '1.0.283.8'
  sha256 '9ed19d6e0e24d3ef533cead19e1a559b5bdcb668373a4c4807a16c8fbd0721f1'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '558e356ee738736e4cbefb52006b79d344bfe3f3c6be9ce1e3787d92df5af112'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
