cask 'opera-developer' do
  version '47.0.2615.0'
  sha256 '37abd28e18c8c5b86415f5510637f8d63c01ead2e34870a30f2966f52539c631'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
