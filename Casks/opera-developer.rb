cask :v1 => 'opera-developer' do
  version '30.0.1835.5'
  sha256 'f4a8cd8860ac2836b420b9f0456b50629759465eba91bf472a30d529815ba0fa'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
