cask 'opera-beta' do
  version '39.0.2256.30'
  sha256 'a9db28503b5592772d0ad6a30df3e967c071069aeb0c9d9eb5d7fb957f5db7bb'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
