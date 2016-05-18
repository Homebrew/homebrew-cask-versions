cask 'opera-beta' do
  version '38.0.2220.12'
  sha256 '04faf3f4ff041187db86eb9835ebe68187425f18e22cfd2d95d9e2d254a5e634'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
