cask 'opera-developer' do
  version '40.0.2280.0'
  sha256 '8e6911983f9904f3772974396b044103cef5a582fe830031d30fcd62b6ff4018'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
