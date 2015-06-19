cask :v1 => 'opera-developer' do
  version '32.0.1899.0'
  sha256 'a157d66c0eda86790362c49c210a7cf62e22522170ba8b70cc4e9fc2febe16c9'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
