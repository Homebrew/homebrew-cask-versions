cask 'opera-beta' do
  version '58.0.3135.21'
  sha256 '84343a97f10884553a8a46d8f004a8c614467b507d096345b1d3a9443720f11f'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
