cask 'opera-beta' do
  version '44.0.2510.401'
  sha256 'bc1d62708c43a5478d9ee9b02bc0092e1601ab7068573c294ad5ff243c919e9f'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
