cask 'opera-beta' do
  version '41.0.2353.10'
  sha256 'e3c6bb1104dd179c498ab5f1e9a735b97200688f7f87e8426fd2bd5f527b3f78'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
