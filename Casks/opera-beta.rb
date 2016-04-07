cask 'opera-beta' do
  version '37.0.2178.10'
  sha256 'ec19fd011476fe7df84fcb6df7a810fbb804a9ccc9f2eb250807cad60ffa389c'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
