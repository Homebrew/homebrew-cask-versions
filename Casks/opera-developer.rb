cask 'opera-developer' do
  version '42.0.2372.0'
  sha256 'f3731e1cd333b20f9166caddc68117282b1382f98084e14853308eb3917d47ca'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
