cask 'opera-beta' do
  version '52.0.2871.3'
  sha256 '38addfae673c117dde267cdc229565cb4df487e31f1ff47df0b7da88e5a47653'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
