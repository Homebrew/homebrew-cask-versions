cask :v1 => 'opera-developer' do
  version '32.0.1918.0'
  sha256 '9a61f06376bfb4d04f662f2c3c8909ca8962e09d0b632d001fb15effd5978f4d'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
