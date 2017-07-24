cask 'opera-developer' do
  version '48.0.2664.0'
  sha256 '6600d20829bf264da3e4aa7ea768326d97fab3370bf5b44795cd9853cd95ed39'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
