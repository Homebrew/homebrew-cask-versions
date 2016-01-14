cask 'opera-developer' do
  version '36.0.2106.0'
  sha256 '0190c061ee2e0bb59830e064a893838d90f7148cce9a886ca0935363da98594f'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name "Opera Developer"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
