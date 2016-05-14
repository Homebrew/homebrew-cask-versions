cask 'opera-developer' do
  version '39.0.2226.0'
  sha256 '6e8db739dae37319af1c9908fce61b3748640a8542875c9dea81c7aaa6c9d595'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
