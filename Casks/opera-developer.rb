cask 'opera-developer' do
  version '45.0.2531.0'
  sha256 '063a37849dcbae4b1376106b872e9563f8f4bbe13077c4efab4412622ee1c335'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
