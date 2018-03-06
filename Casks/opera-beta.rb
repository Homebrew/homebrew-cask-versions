cask 'opera-beta' do
  version '52.0.2871.9'
  sha256 '307ba63d1a4d361ed996deb301af971d5991d64f4ab5f3574c687ebc202bfaf9'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
