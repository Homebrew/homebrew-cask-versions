cask 'opera-beta' do
  version '37.0.2178.19'
  sha256 '0709011ff4b28701bc100c4dec8284f7997fb01f5c3a4ffed063537971b92564'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
