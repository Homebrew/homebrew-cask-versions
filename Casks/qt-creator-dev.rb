cask 'qt-creator-dev' do
  version '4.12.0-beta1'
  sha256 'b76dce61602fa09d9dbafe10d05dc4ed6c0dc69b0d6b7b2dd0f47c69acfdb940'

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
