cask :v1 => 'opera-developer' do
  version '32.0.1926.0'
  sha256 '3ebaa929fa7e0875c89622bf82fb501c7abbc5f4e930a92ee520365f15f4e3ad'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
