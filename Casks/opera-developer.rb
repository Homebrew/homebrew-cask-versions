cask 'opera-developer' do
  version '49.0.2723.0'
  sha256 '1e8cf912bf5dac56058c7629cf9a507c8b90eebdd28793bb3c119dfca791574b'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
