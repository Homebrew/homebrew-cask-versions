cask 'opera-beta' do
  version '50.0.2762.35'
  sha256 '48f9af87b855068ad261fc4ffba272f28049268247e7b11d121bb93ad197ada6'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
