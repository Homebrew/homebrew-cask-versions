cask 'qt-creator-dev' do
  version '4.13.0-beta1'
  sha256 'd8e66726b208d8f3f12b53cc6432591676ad01e497d5cadd27844228dc6049cf'

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
