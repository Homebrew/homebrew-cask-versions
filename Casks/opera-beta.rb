cask :v1 => 'opera-beta' do
  version '28.0.1750.36'
  sha256 'cab81fd4bee7b73ab8b377db3e73305f8dde64c2a495f4aa1acfd742e0ba248b'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
