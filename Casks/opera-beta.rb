cask 'opera-beta' do
  version '38.0.2220.25'
  sha256 '48b647436cf671b4a278ae7e4d81047d7b09d3a4c64ac364b1a8962047f828b0'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
