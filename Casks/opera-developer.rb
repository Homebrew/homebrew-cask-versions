cask 'opera-developer' do
  version '50.0.2739.0'
  sha256 '44a43893bc12d3515d82f9dbf48cfa88c8596021ae8375c1e4e5147513e0560b'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
