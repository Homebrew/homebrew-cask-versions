cask 'opera-beta' do
  version '36.0.2130.29'
  sha256 'eaacdae50c4194075e132e5f4d0a2672690e6c98a51f4716748034bc5563c2c6'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
