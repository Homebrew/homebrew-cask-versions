cask 'opera-developer' do
  version '45.0.2545.0'
  sha256 '66d487279b6dd77f651eff4da162e560c87e19daec18a4a6a2d1ecfc99c494f1'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
