cask :v1 => 'opera-developer' do
  version '34.0.1996.0'
  sha256 '5cbf7dbf38769c3626926e7bbb4a53a829f6559fc2b30e904a010cd46b9b0032'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
