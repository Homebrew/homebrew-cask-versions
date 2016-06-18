cask 'opera-beta' do
  version '39.0.2256.4'
  sha256 'b8a110a94711230c8f87c7e1888026a29c7ec41d80b98035bd1c8a944cb3eb29'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
