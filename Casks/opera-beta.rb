cask :v1 => 'opera-beta' do
  version '34.0.2036.16'
  sha256 'aa6629adaf5bc4b62497917a8bb8f114492fd145b076851975c5d8ee6e4e277d'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
