cask 'opera-developer' do
  version '51.0.2796.0'
  sha256 '81e7cf25f5f01434851d1d693c072ffa08f8ddbad347e9d430ec0a6918284656'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
