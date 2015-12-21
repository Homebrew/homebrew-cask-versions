cask 'opera-developer' do
  version '36.0.2079.0'
  sha256 '7b0068ad110d01d86bbb76f6e1e79a8b972a21a8db4eaaee6d2ce3fdf1784c6d'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
