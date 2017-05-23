cask 'opera-developer' do
  version '46.0.2602.0'
  sha256 'fec28f76ff5f7225254bd6b0126406c1ca7fba71888c5b9acb4a22d0f68baef6'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
