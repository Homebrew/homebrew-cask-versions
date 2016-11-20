cask 'opera-beta' do
  version '42.0.2393.38'
  sha256 '430f1a628a8a8e965fde39a17337a2251b3608bdeba683f7e4f6da8627e413a1'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
