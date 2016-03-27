cask 'opera-developer' do
  version '37.0.2171.0'
  sha256 '04ece5f9f23f1a905d9426a345283e84d700cb506902a0837f8bb65489cab545'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
