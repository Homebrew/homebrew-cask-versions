cask 'opera-beta' do
  version '45.0.2552.453'
  sha256 'c9bc4bb478a0114e8d8014eb7570a55309c48bbfe18e6d207d78748f4cea8081'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
