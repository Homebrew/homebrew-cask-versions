cask 'opera-developer' do
  version '39.0.2234.0'
  sha256 '60eba885eb96479a12683e8a5c250a0b643821550c6212fb72f895f598286d62'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
