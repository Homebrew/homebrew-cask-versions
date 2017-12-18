cask 'opera-developer' do
  version '51.0.2809.0'
  sha256 '8d44700cfb5b29237b0c0dc18cf0bb23a18593af2cbb7473a182051d927f3a70'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
