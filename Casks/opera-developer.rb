cask 'opera-developer' do
  version '39.0.2248.0'
  sha256 'ed9e814690a2e3ff77fc6684355b490054319a7cd9f50a9844807f5e6e1b5ecd'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
