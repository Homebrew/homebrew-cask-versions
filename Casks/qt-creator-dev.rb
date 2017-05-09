cask 'qt-creator-dev' do
  version '4.3.0-rc1'
  sha256 '33feeeec0e06455e8c072d7026d3fb3fd78d6e90252bc902fac788f157bdc563'

  url "http://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
