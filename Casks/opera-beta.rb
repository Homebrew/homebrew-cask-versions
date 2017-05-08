cask 'opera-beta' do
  version '45.0.2552.634'
  sha256 'fe965d172355963eecbea934d94115a0eae31a9aaf9c2be374091ce0c58970c1'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
