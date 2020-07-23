cask 'opera-beta' do
  version '70.0.3728.59'
  sha256 '0ee4d8a2d52754b3b549edfd488d5beb648dfcd3cb8b52d278cb52a638055bb4'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
