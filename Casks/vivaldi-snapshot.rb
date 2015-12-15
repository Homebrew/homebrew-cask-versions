cask :v1 => 'vivaldi-snapshot' do
  version '1.0.344.34'
  sha256 '977552ccca2d50c1ea0ff0c087a4238e6d3781e64d6c64bb32baf2eebf1af736'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => 'f37ad7c20ed2177d08681d6b670e23cb7aa1ff88df31bd02e77860b1cd1962ce'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
