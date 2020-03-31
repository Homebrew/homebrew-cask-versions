cask 'qt-creator-dev' do
  version '4.12.0-beta2'
  sha256 '4ec4f303ba8ec17401a5bcc0556d8ec82c131740c4aadb5e09c6b033c13fd649'

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
