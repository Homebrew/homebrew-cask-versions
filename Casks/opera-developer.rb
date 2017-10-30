cask 'opera-developer' do
  version '50.0.2759.0'
  sha256 '2ca9e577fb8d3de35c282911e8b5bfdd687b40bd7bd88e235b477b46d249a466'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
