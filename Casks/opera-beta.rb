cask 'opera-beta' do
  version '70.0.3728.21'
  sha256 '6c8ca8d3c93acf5f5e22d37a7a25e77ef7734839bdec565f8292deaadb41ee0e'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
