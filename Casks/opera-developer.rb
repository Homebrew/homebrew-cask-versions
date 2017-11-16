cask 'opera-developer' do
  version '51.0.2776.0'
  sha256 'db1843a074bfb42528c514350d3ebd2ff7b1ca1a0c67a027d2594759c64ebbdc'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
