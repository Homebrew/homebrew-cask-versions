cask 'opera-beta' do
  version '68.0.3618.18'
  sha256 '1942283d29fc84811a0b5fe62aba70a29f69a729db5143f9476ac58a974d1300'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
