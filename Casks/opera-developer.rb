cask 'opera-developer' do
  version '43.0.2431.0'
  sha256 'ffc12e9f80766d0b0564ed25011caed91fe80d6986d696458fd02531ca955d73'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
