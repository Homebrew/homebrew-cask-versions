cask 'opera-developer' do
  version '46.0.2573.0'
  sha256 '35b1d6c06a650ed322baa459339126555d4d2ebe7ae4663cf080c7bb33f7fdc6'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
