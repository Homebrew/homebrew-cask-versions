cask 'opera-developer' do
  version '40.0.2296.0'
  sha256 '4e3ae8849960ae4631b07b99c59423912f572a2ca1c89b7b3ae39726428a3ae0'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
