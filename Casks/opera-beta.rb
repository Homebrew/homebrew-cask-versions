cask :v1 => 'opera-beta' do
  version '34.0.2036.3'
  sha256 '28d55f0cd755f2a30348aa6ab68be8162a6112da0e1001bb88b8a3d071618b9e'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
