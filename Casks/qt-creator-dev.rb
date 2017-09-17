cask 'qt-creator-dev' do
  version '4.4.0-rc1'
  sha256 'c4194ff3b9109f71e7fbedac35b27883d65476610cee6a3e9adfe26a9dff2e39'

  url "http://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
