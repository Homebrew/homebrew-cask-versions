cask :v1 => 'opera-developer' do
  version '34.0.2044.0'
  sha256 '24f697eed6a7401cf6c4be010b89b2d3a0a5e64e8335f4dc8578c84655935ec5'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
