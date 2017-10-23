cask 'opera-developer' do
  version '50.0.2753.0'
  sha256 '6188251733539c95067634c59fa250c2389c0733c7e1e8407c281abf1df0769a'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
