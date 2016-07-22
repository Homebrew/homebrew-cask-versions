cask 'opera-beta' do
  version '39.0.2256.37'
  sha256 '82fc2055c095e1860d630dd40931cc257378be4bdcb2e92e6871eef89e0a5e52'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
