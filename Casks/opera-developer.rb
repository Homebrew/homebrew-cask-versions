cask 'opera-developer' do
  version '48.0.2636.0'
  sha256 'a3cfc9ac196a6b297b6aa1833a818eb720395e272b168833efd28145864b997b'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
