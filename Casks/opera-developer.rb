cask :v1 => 'opera-developer' do
  version '29.0.1781.0'
  sha256 'b3b24c1456722318eea3549169af43f268ccc0f015d3a8ad739bbe2c57a42d26'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
