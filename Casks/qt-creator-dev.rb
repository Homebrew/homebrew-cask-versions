cask 'qt-creator-dev' do
  version '4.1.0-beta1'
  sha256 'cb4c913ffa25d8e2d093428e4b0d29cf6581e538112c45652a7729ebe2e92f39'

  url "http://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
