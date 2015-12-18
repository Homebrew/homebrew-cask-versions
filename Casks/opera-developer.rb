cask 'opera-developer' do
  version '36.0.2072.0'
  sha256 'ef4dbb8d9743af82521aeafc908f574c5cf8d5d56b9360de888d253a27c1e3f7'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
