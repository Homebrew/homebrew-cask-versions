cask 'opera-beta' do
  version '58.0.3135.45'
  sha256 '4af28884e3a09eaea7cba070c65411e9390399f69a3fef677b1e79e450ab26c3'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
