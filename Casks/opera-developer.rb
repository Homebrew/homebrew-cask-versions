cask :v1 => 'opera-developer' do
  version '29.0.1794.0'
  sha256 'c6d875407a276a4b48a5d6b271ba5e40b7292c3734510635d74a56ccd7a1b6e8'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
