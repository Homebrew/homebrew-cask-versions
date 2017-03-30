cask 'qt-creator-dev' do
  version '4.3.0-beta1'
  sha256 '0ad667405947f96328ff2eac9d25eb4deca1587397912b15db8d9c491ca4cb4b'

  url "http://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
