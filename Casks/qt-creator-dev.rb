cask 'qt-creator-dev' do
  version '4.8.0'
  sha256 'dbbcefe1233cb29f0d20565273b6e5262e60190bcddcc55ed5be97ff57284b7a'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
