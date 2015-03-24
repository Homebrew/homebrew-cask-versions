cask :v1 => 'opera-developer' do
  version '30.0.1812.0'
  sha256 'ec032b5545358e5358f96cdf16f5eb813f726727d9fcb878520f2669473f2bc7'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
