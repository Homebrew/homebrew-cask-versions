cask 'qt-creator-dev' do
  version '4.9.0-rc1'
  sha256 'ffda2d1f05dbf6d4f58524f115309158e7a528b30bf3669662f207364769e491'

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
