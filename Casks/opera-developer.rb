cask 'opera-developer' do
  version '43.0.2412.0'
  sha256 '1e8ca5030b86304b1e4004f269c01632523c372da09930cac229cf6ca51a6d50'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
