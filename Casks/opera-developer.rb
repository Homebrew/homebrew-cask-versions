cask 'opera-developer' do
  version '46.0.2590.0'
  sha256 '1a5c206a4ca9c8736159dde1114c214b629f20413abeb3b43d0909748cc6f1ed'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
