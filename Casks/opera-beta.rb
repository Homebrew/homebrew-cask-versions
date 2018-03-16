cask 'opera-beta' do
  version '52.0.2871.20'
  sha256 '0554a63c96207a08a21113a3ad2da988e7f6c29d76f16b3dc7e8b69fb0512cf4'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
