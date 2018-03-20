cask 'opera-beta' do
  version '52.0.2871.27'
  sha256 'dbde74e9f40b65a71254c67fc2273af3d37effe1a0f5aa5e701fbda9c5d2b3e8'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
