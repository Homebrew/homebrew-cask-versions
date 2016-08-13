cask 'opera-developer' do
  version '41.0.2315.0'
  sha256 '22b760cc43a1f8cff61280cc37ee78e926825e9bc029ed22887d4c1daecd21fe'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
