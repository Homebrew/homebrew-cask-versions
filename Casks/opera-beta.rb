cask 'opera-beta' do
  version '49.0.2725.31'
  sha256 '04a71b387c613f1dae5c091a1b8029e4c8236f3e50086344fe1f7a6b9a1fe715'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
