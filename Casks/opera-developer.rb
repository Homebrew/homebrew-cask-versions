cask 'opera-developer' do
  version '42.0.2392.0'
  sha256 'de06db32a3e03b596ec483d920e282b158bdf1f58bc823496f0ee232d5d85621'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
