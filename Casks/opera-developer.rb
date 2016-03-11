cask 'opera-developer' do
  version '37.0.2163.0'
  sha256 'c2f0d4453618ea6950a640a00ea0711b5d23101d388926085e60ae4d0684d23a'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
