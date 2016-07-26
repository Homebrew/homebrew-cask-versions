cask 'opera-developer' do
  version '40.0.2301.0'
  sha256 'a085946ac0a5f6eb04a2eb37137f8579a8f6914f8eaaa8cb75b3fe9988cac5e2'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
