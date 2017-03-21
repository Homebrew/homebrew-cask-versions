cask 'opera-developer' do
  version '45.0.2539.0'
  sha256 'd910addce7e5d28e70b274e0ab99e9cc8e47d068060772389d4835745990bf41'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
