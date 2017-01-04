cask 'opera-developer' do
  version '44.0.2463.0'
  sha256 '4fd9dcec399160abdb1a4529fd9f3bd47b5e643bc293de8f41ffe61579c22543'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
