cask 'opera-beta' do
  version '51.0.2830.2'
  sha256 '1c5cc3bbc8a756a6e47897c8bdbfb7fc8913c9e750bd2333f1c1cfae23348e5d'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
