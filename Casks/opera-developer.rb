cask 'opera-developer' do
  version '48.0.2643.0'
  sha256 '912828e5b1abfd82badb5f9c34f4d045d3a037e0fcf4a75c46812651396fbf25'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
