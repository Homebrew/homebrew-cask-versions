cask 'opera-developer' do
  version '48.0.2657.0'
  sha256 'a189334d05c3affd3f5a6051a150fd8c45e1401e4ddd31d7933bb36e71f7a08e'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
