cask 'opera-developer' do
  version '47.0.2628.0'
  sha256 'e0f3cc07e0966d4b4620ca833c8eefc4a9361e31f663ba0fa2e82d858ea5ff87'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
