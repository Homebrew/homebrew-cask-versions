cask 'opera-developer' do
  version '37.0.2142.0'
  sha256 'ef01ab408bce852bdf689a00427be7e76dd86f0595e956fa5e54290b4bacde44'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
