cask 'opera-beta' do
  version '39.0.2256.21'
  sha256 '3e614fdf0eaaed7cfccdc02c4ba81792a3e649a042e14b0c4b3fe56010da352b'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
