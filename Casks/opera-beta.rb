cask :v1 => 'opera-beta' do
  version '29.0.1795.35'
  sha256 '0b6ee1cad2b335bd95c1c77c24e13fabad80419f430a91e10ea62a4574064cac'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
