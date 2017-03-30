cask 'opera-developer' do
  version '45.0.2548.0'
  sha256 'cb83bee771753ef7f8447ba0864bdcde4fa57f2dcdc713fb53f38616e3b5664f'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
