cask 'opera-developer' do
  version '51.0.2791.0'
  sha256 'b8015baef981d05abf67d5ed65e06c43d4d05a8f38a8d30a28b609992d0be09a'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
