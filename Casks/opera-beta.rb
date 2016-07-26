cask 'opera-beta' do
  version '39.0.2256.40'
  sha256 '8eb94df5ba985c49f7db09ba23b8914db59f4bf7ff11e792145d86281d845b96'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
