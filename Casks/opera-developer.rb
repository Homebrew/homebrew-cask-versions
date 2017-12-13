cask 'opera-developer' do
  version '51.0.2802.0'
  sha256 'ad04a856446abd1b69e00503d1aeecf49a5370597b6602d5287a6162be27ee7f'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
