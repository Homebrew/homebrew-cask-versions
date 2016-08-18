cask 'opera-developer' do
  version '41.0.2323.0'
  sha256 '1ee985db0fd30bbf2b098cbf1654cb4cf7c0ddc42864c2c2a8025b618125fbb0'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
