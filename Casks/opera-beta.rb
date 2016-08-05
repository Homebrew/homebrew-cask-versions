cask 'opera-beta' do
  version '40.0.2308.3'
  sha256 '3a9201c4c6a831c46fb7dbcd0163073802800cb21bd22ad97818e14d9991145c'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
