cask 'opera-beta' do
  version '66.0.3515.7'
  sha256 '6bd204ab570f656e686e0d31f0a7aa16734f1ebc42d51aa5fc4cdf3bfc7137b4'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
