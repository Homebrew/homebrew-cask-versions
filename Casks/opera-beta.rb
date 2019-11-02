cask 'opera-beta' do
  version '65.0.3467.7'
  sha256 'aa5864f521bdba08d595c6f40d325620ec00ac57d647c3eaf5bee5693a6d6534'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
