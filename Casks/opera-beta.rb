cask :v1 => 'opera-beta' do
  version '34.0.2036.24'
  sha256 '0c4753e027050cf1f94417f9512fe26ec691f3461d7c228927d0c391f5dc725e'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
