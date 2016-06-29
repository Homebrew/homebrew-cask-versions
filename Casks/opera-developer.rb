cask 'opera-developer' do
  version '40.0.2273.0'
  sha256 'd52d7957710527245663f6284b700f002460b237f1e4d774ddf119b8022acf9e'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
