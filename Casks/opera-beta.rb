cask 'opera-beta' do
  version '44.0.2510.73'
  sha256 '46efd4cf4f8177e8ea4e9bb1820fb9371009aa050917977ed459aa7e28fd79b1'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
