cask :v1 => 'opera-developer' do
  version '33.0.1963.0'
  sha256 '74eb187547baaf74db69c29bf4387a3d6e0431ad4ef1d3d014864126658a57ed'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
