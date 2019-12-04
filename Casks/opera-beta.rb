cask 'opera-beta' do
  version '66.0.3515.3'
  sha256 '01ec9270d41085c44ce0b40e68f2b63e4b2f6295f6ef144eddffe2263d4dc0c8'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
