cask :v1 => 'opera-developer' do
  version '32.0.1910.0'
  sha256 '02187e2b5d2f0e157f0de4950f4754d9a9cb385d770979a113c82c8f91226ffb'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
