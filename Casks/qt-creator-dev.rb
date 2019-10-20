cask 'qt-creator-dev' do
  version '4.11.0-beta1'
  sha256 'a3576194e01f2f81ba9535244695dcf67150da75dd50f1ae88e85290d847fcd8'

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
