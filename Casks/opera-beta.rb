cask 'opera-beta' do
  version '49.0.2725.18'
  sha256 '6321cd428a24370b563025c9ddf4f666f0ccbe466f5b0f767bca5506ebecc5ad'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
