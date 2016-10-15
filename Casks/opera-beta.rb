cask 'opera-beta' do
  version '41.0.2353.23'
  sha256 '41881d7039d98b577c855fdec2635b9a5a205be307e4277d0f1e8b8bdfe344c4'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
