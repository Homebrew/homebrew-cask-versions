cask 'opera-developer' do
  version '41.0.2340.0'
  sha256 '15d0dec9ecaf3ab277633164a99410be079824b742e9d45ee57c14f69690b1ff'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
