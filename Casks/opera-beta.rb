cask 'opera-beta' do
  version '68.0.3618.45'
  sha256 'a53c8622ec1378606edd6e9295f571589d2eecd16a51e780f94585ea271e5a81'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
