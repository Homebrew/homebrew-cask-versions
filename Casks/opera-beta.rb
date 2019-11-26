cask 'opera-beta' do
  version '65.0.3467.32'
  sha256 '85be55f7cf4845fbe773d363ce4ae0ffbdc21e1dc3981aa74390dd649fdaab5d'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
