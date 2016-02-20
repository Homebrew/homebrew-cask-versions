cask 'opera-beta' do
  version '36.0.2130.2'
  sha256 '364b62097305a8f371bd3f8a111e117c8a0c4050d417879a43532ee3734106e7'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
