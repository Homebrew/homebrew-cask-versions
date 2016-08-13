cask 'opera-beta' do
  version '40.0.2308.11'
  sha256 'ed4ff0e87c6ee519cc4d3d7b248eca069511c63ef4deacfb24f16aaaf3db6e30'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
