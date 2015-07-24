cask :v1 => 'opera-developer' do
  version '32.0.1933.0'
  sha256 'c279198a238a118d3dd56d3d80b4cae68a577ac2a3c7a3316ed50ad41665d093'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
