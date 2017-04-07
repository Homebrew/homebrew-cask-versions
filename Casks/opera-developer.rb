cask 'opera-developer' do
  version '46.0.2556.0'
  sha256 'b994e5abf24967b11dfb570ec6b5154f08ac4df49c5e70ee42f750ff44d72ca6'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
