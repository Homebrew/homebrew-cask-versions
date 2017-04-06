cask 'opera-beta' do
  version '45.0.2552.89'
  sha256 '4003fd26ab33289ea3da4c8ec76c680531198b2f8730034dbb41adf29fc5d943'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
