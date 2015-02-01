cask :v1 => 'opera-developer' do
  version '28.0.1750.5'
  sha256 '323d8a24b6afd63fba8c0d17a6e810cc4cfd454df488499a395bf0ff70421335'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
