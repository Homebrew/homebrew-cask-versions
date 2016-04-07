cask 'opera-developer' do
  version '38.0.2190.0'
  sha256 '08c2b696a2dad4cc443fb7d160e80c4b368926916f9c09aeba129e0657e3152e'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
