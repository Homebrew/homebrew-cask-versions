cask :v1 => 'opera-beta' do
  version '30.0.1835.47'
  sha256 '97817b3a4bbf6eb7e92493f241665012f42592b3b404e888ad3cb05f61c8b39c'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
