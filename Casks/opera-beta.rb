cask 'opera-beta' do
  version '45.0.2552.225'
  sha256 '34fdb0bb236260d2ca690645da42361f80e9539f8b861881eb0c72cc7fec231a'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
