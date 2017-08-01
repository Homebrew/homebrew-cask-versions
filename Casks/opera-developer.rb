cask 'opera-developer' do
  version '48.0.2670.0'
  sha256 '285095adf85be110593d304eb57016d2e7e9a676278530be4a1e49ebd9a9be71'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
