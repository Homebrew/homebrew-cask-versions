cask 'opera-developer' do
  version '49.0.2705.0'
  sha256 '2a9c9b6702ae8def81a66a5c4f2ccb18f70d96da09e38b68fed49f7f319ea5c2'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Developer.app'
end
