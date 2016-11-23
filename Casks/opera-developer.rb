cask 'opera-developer' do
  version '43.0.2420.0'
  sha256 'cca2d505fc0f18669e438d6dc3fba53cdcc081b4b5357d9fdff176ecef8f6102'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
