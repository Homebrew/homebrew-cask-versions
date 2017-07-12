cask 'opera-developer' do
  version '48.0.2652.0'
  sha256 'd24f61b3636b821cacaf9a3bb3e80585ce8e77a3d812a0c1673dbde45c7d9630'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
