cask 'opera-developer' do
  version '44.0.2475.0'
  sha256 'b13d4e2f1ffaaf33a7becb1980722900a66e4ca648ff44555fa3592b8b78b7e4'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
