cask 'opera-developer' do
  version '40.0.2288.0'
  sha256 'f589990e0a1f6709bcac2bf31def1a3710660f6ce7964ade9b96ab8f4db6c1c6'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
