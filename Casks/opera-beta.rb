cask 'opera-beta' do
  version '40.0.2308.52'
  sha256 '007ee7e6b6911cc0e25a4432f7a2fb7952b53cbb6ec67b8749d0d4d56dbde01a'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
