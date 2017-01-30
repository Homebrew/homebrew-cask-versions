cask 'opera-developer' do
  version '44.0.2487.0'
  sha256 'b21e312a67cc0605f6ee2bb8f1ae1fafca1d2b11ec55e8dd0e81bf47565885ae'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
