cask :v1 => 'opera-developer' do
  version '29.0.1795.14'
  sha256 'ce0e8ecdac8c1fda65369acc5d9539faad529e0970c4a6de0c5ed832e29d34e0'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
