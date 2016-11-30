cask 'qt-creator-dev' do
  version '4.2.0-rc1'
  sha256 '4364442316a9fb161385276d0c10669f43a46b9d8918af2430d7ab475987c06d'

  url "http://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
