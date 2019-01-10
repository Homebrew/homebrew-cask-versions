cask 'opera-beta' do
  version '58.0.3135.37'
  sha256 '7b598102e4d93773b4d2f3deb64fad7d4e154ff1c2b8e8a158f7ae1f6c3cf545'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
