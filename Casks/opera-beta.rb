cask 'opera-beta' do
  version '68.0.3618.5'
  sha256 '94aafcc1f1d7c6708f2a71293b6de7c382fa4eca185105745730a9c93ad9816d'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
